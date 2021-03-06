RSpec.describe ProjectMetricTrackerActivities do

  context 'meta data' do
    it "has a version number" do
      expect(ProjectMetricTrackerActivities::VERSION).not_to be nil
    end
  end

  context 'image and score' do
    subject(:metric) do
      credentials = { tracker_project: '2200655', tracker_token: 'test token' }
      described_class.new credentials, nil
    end

    before :each do
      stub_request(:get, %r{https://www\.pivotaltracker\.com/services/v5/projects/2200655/activity}).
          to_return(status: 200, body: File.read('spec/fixtures/tracker_activities.json'))
    end

    it 'should set score correctly' do
      expect(metric.score).not_to be_nil
    end

    it 'should set image correctly' do
      expect(metric.image).to be_a(Hash)
    end

    it 'should contain the right image content' do
      image = metric.image
      expect(image[:data][:activities]).not_to be_empty
      expect(image[:data][:transitions]).not_to be_empty
    end
  end

  context 'data generator' do
    it 'should generate fake data' do
      expect(described_class.fake_data.length).to eql(3)
      expect(described_class.fake_data.first).to have_key(:image)
      expect(described_class.fake_data.first).to have_key(:score)
    end

    it 'should set image data correctly' do
      image = described_class.fake_data.first[:image]
      expect(image[:data][:activities]).not_to be_empty
      expect(image[:data][:transitions]).not_to be_empty
    end
  end
end
