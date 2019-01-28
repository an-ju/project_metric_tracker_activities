require "project_metric_tracker_activities/version"
require 'project_metric_tracker_activities/data_generator'
require 'project_metric_base'
require 'faraday'

class ProjectMetricTrackerActivities
  include ProjectMetricBase
  add_credentials %I[tracker_project tracker_token]
  add_raw_data %w[tracker_activities]

  def initialize(credentials, raw_data=nil)
    @project = credentials[:tracker_project]
    @conn = Faraday.new(url: 'https://www.pivotaltracker.com/services/v5')
    @conn.headers['Content-Type'] = 'application/json'
    @conn.headers['X-TrackerToken'] = credentials[:tracker_token]

    complete_with raw_data
  end

  def score
    @tracker_activities.length
  end

  def image
    { chartType: 'tracker_activities',
      data: { activities: @tracker_activities }}
  end

  def obj_id
    nil
  end

  private

  def tracker_activities
    resp = @conn.get("projects/#{@project}/activity?limit=1000&occurred_after=#{(Time.now - 3*60*60*24).iso8601}")
    @tracker_activities = JSON.parse(resp.body, symbolize_names: true)
    next_ind = next_page(resp)
    while next_ind.positive? do
      resp = @conn.get("projects/#{@project}/activity?limit=1000&offset=#{next_ind}&occurred_after=#{(Time.now - 3*60*60*24).iso8601}")
      @tracker_activities += JSON.parse(resp.body, symbolize_names: true)
      next_ind = next_page(resp)
    end
  end

  def next_page(resp)
    offset = resp.headers['X-Tracker-Pagination-Offset'].to_i
    returned = resp.headers['X-Tracker-Pagination-Returned'].to_i
    total = resp.headers['X-Tracker-Pagination-Total'].to_i

    offset + returned >= total ? -1 : offset + returned
  end

end
