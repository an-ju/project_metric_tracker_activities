class ProjectMetricTrackerActivities
  def self.fake_data
    [fake_metric(10), fake_metric(15), fake_metric(0)]
  end

  def self.fake_metric(num_act)
    { score: num_act,
      image: { chartType: 'tracker_activities',
               data: { activities: activities(num_act),
                       transitions: transitions(num_act) } } }
  end

  def self.activities(num_act)
    lst = [
        {
            "kind": "story_move_activity",
            "guid": "2200655_60",
            "project_version": 60,
            "message": "An Ju moved this story after 'Demo story 3'",
            "highlight": "moved",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 162710886,
                    "original_values": {
                        "current_state": "unstarted",
                        "updated_at": "2018-12-17T18:59:35Z",
                        "before_id": 163507035,
                        "after_id": 160837109
                    },
                    "new_values": {
                        "current_state": "unscheduled",
                        "updated_at": "2019-01-28T00:38:11Z",
                        "before_id": nil,
                        "after_id": 161909121
                    },
                    "name": "Demo story",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 162710886,
                    "name": "Demo story",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/162710886"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:38:11Z"
        },
        {
            "kind": "story_update_activity",
            "guid": "2200655_59",
            "project_version": 59,
            "message": "An Ju edited this feature",
            "highlight": "edited",
            "changes": [
                {
                    "kind": "label",
                    "change_type": "update",
                    "id": 20933095,
                    "original_values": {
                        "counts": {
                            "number_of_zero_point_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "sum_of_story_estimates_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "number_of_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "kind": "story_counts"
                        }
                    },
                    "new_values": {
                        "counts": {
                            "number_of_zero_point_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "sum_of_story_estimates_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 1,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "number_of_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 1,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "kind": "story_counts"
                        }
                    },
                    "name": "test"
                },
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 163507032,
                    "original_values": {
                        "label_ids": [],
                        "updated_at": "2019-01-28T00:37:19Z",
                        "labels": []
                    },
                    "new_values": {
                        "label_ids": [
                            20933095
                        ],
                        "updated_at": "2019-01-28T00:38:02Z",
                        "labels": [
                            "test"
                        ]
                    },
                    "name": "Test activity endpoint",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 163507032,
                    "name": "Test activity endpoint",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/163507032"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:38:02Z"
        },
        {
            "kind": "story_create_activity",
            "guid": "2200655_58",
            "project_version": 58,
            "message": "An Ju added this feature",
            "highlight": "added",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "create",
                    "id": 163507035,
                    "new_values": {
                        "id": 163507035,
                        "project_id": 2200655,
                        "name": "Test endpoints",
                        "description": "This is also a test.",
                        "story_type": "feature",
                        "current_state": "unscheduled",
                        "requested_by_id": 1140314,
                        "owner_ids": [],
                        "label_ids": [
                            20933095
                        ],
                        "follower_ids": [],
                        "created_at": "2019-01-28T00:37:54Z",
                        "updated_at": "2019-01-28T00:37:54Z",
                        "before_id": 161909121,
                        "after_id": 162710886,
                        "blocked_story_ids": [],
                        "labels": [
                            "test"
                        ]
                    },
                    "name": "Test endpoints",
                    "story_type": "feature"
                },
                {
                    "kind": "label",
                    "change_type": "update",
                    "id": 20933095,
                    "original_values": {
                        "counts": {
                            "number_of_zero_point_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "sum_of_story_estimates_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "number_of_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "kind": "story_counts"
                        }
                    },
                    "new_values": {
                        "counts": {
                            "number_of_zero_point_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "sum_of_story_estimates_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "number_of_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 1,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "kind": "story_counts"
                        }
                    },
                    "name": "test"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 163507035,
                    "name": "Test endpoints",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/163507035"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:54Z"
        },
        {
            "kind": "label_create_activity",
            "guid": "2200655_57",
            "project_version": 57,
            "message": "An Ju created labels: \"test\"",
            "highlight": "created",
            "changes": [
                {
                    "kind": "label",
                    "change_type": "create",
                    "id": 20933095,
                    "new_values": {
                        "id": 20933095,
                        "project_id": 2200655,
                        "name": "test",
                        "created_at": "2019-01-28T00:37:53Z",
                        "updated_at": "2019-01-28T00:37:53Z",
                        "counts": {
                            "number_of_zero_point_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "sum_of_story_estimates_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "number_of_stories_by_state": {
                                "accepted": 0,
                                "started": 0,
                                "finished": 0,
                                "unstarted": 0,
                                "planned": 0,
                                "delivered": 0,
                                "unscheduled": 0,
                                "rejected": 0,
                                "kind": "counts_by_story_state"
                            },
                            "kind": "story_counts"
                        }
                    },
                    "name": "test"
                }
            ],
            "primary_resources": [
                {
                    "kind": "label",
                    "id": 20933095,
                    "name": "test"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:53Z"
        },
        {
            "kind": "story_update_activity",
            "guid": "2200655_56",
            "project_version": 56,
            "message": "An Ju accepted this bug",
            "highlight": "accepted",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 160837094,
                    "original_values": {
                        "current_state": "delivered",
                        "accepted_at": nil,
                        "updated_at": "2019-01-28T00:37:22Z"
                    },
                    "new_values": {
                        "current_state": "accepted",
                        "accepted_at": "2019-01-28T00:37:25Z",
                        "updated_at": "2019-01-28T00:37:25Z"
                    },
                    "name": "Demo Bug 1",
                    "story_type": "bug"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 160837094,
                    "name": "Demo Bug 1",
                    "story_type": "bug",
                    "url": "https://www.pivotaltracker.com/story/show/160837094"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:25Z"
        },
        {
            "kind": "story_update_activity",
            "guid": "2200655_55",
            "project_version": 55,
            "message": "An Ju delivered this bug",
            "highlight": "delivered",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 160837094,
                    "original_values": {
                        "current_state": "finished",
                        "updated_at": "2018-12-17T18:56:14Z"
                    },
                    "new_values": {
                        "current_state": "delivered",
                        "updated_at": "2019-01-28T00:37:22Z"
                    },
                    "name": "Demo Bug 1",
                    "story_type": "bug"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 160837094,
                    "name": "Demo Bug 1",
                    "story_type": "bug",
                    "url": "https://www.pivotaltracker.com/story/show/160837094"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:22Z"
        },
        {
            "kind": "story_move_activity",
            "guid": "2200655_54",
            "project_version": 54,
            "message": "An Ju moved this story before 'Release 2'",
            "highlight": "moved",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 163507032,
                    "original_values": {
                        "updated_at": "2019-01-28T00:37:09Z",
                        "before_id": 160837077,
                        "after_id": 160837072
                    },
                    "new_values": {
                        "updated_at": "2019-01-28T00:37:19Z",
                        "before_id": 160837109,
                        "after_id": 160837058
                    },
                    "name": "Test activity endpoint",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 163507032,
                    "name": "Test activity endpoint",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/163507032"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:19Z"
        },
        {
            "kind": "story_move_activity",
            "guid": "2200655_53",
            "project_version": 53,
            "message": "An Ju moved this story before 'Demo Chore 1'",
            "highlight": "moved",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 160837077,
                    "original_values": {
                        "updated_at": "2018-12-17T19:00:02Z",
                        "before_id": 160837100,
                        "after_id": 160837087
                    },
                    "new_values": {
                        "updated_at": "2019-01-28T00:37:16Z",
                        "before_id": 160837087,
                        "after_id": 163507032
                    },
                    "name": "Demo story 3",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 160837077,
                    "name": "Demo story 3",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/160837077"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:16Z"
        },
        {
            "kind": "story_update_activity",
            "guid": "2200655_52",
            "project_version": 52,
            "message": "An Ju started this feature",
            "highlight": "started",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 160837072,
                    "original_values": {
                        "current_state": "unstarted",
                        "updated_at": "2018-12-17T19:03:19Z",
                        "before_id": 160837077,
                        "after_id": 160837087
                    },
                    "new_values": {
                        "current_state": "started",
                        "updated_at": "2019-01-28T00:37:11Z",
                        "before_id": 163507032,
                        "after_id": 160837094
                    },
                    "name": "Demo Story 2",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 160837072,
                    "name": "Demo Story 2",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/160837072"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:11Z"
        },
        {
            "kind": "story_update_activity",
            "guid": "2200655_51",
            "project_version": 51,
            "message": "An Ju estimated this feature as 1 point",
            "highlight": "estimated",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "update",
                    "id": 163507032,
                    "original_values": {
                        "estimate": nil,
                        "updated_at": "2019-01-28T00:37:02Z"
                    },
                    "new_values": {
                        "estimate": 1,
                        "updated_at": "2019-01-28T00:37:09Z"
                    },
                    "name": "Test activity endpoint",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 163507032,
                    "name": "Test activity endpoint",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/163507032"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:09Z"
        },
        {
            "kind": "story_create_activity",
            "guid": "2200655_50",
            "project_version": 50,
            "message": "An Ju added this feature",
            "highlight": "added",
            "changes": [
                {
                    "kind": "story",
                    "change_type": "create",
                    "id": 163507032,
                    "new_values": {
                        "id": 163507032,
                        "project_id": 2200655,
                        "name": "Test activity endpoint",
                        "description": "This is meant for testing the activity endpoint.",
                        "story_type": "feature",
                        "current_state": "unstarted",
                        "requested_by_id": 1140314,
                        "owner_ids": [],
                        "label_ids": [],
                        "follower_ids": [],
                        "created_at": "2019-01-28T00:37:02Z",
                        "updated_at": "2019-01-28T00:37:02Z",
                        "before_id": 160837087,
                        "after_id": 160837094,
                        "blocked_story_ids": [],
                        "labels": []
                    },
                    "name": "Test activity endpoint",
                    "story_type": "feature"
                }
            ],
            "primary_resources": [
                {
                    "kind": "story",
                    "id": 163507032,
                    "name": "Test activity endpoint",
                    "story_type": "feature",
                    "url": "https://www.pivotaltracker.com/story/show/163507032"
                }
            ],
            "secondary_resources": [],
            "project": {
                "kind": "project",
                "id": 2200655,
                "name": "Demo Project"
            },
            "performed_by": {
                "kind": "person",
                "id": 1140314,
                "name": "An Ju",
                "initials": "AJ"
            },
            "occurred_at": "2019-01-28T00:37:02Z"
        }
    ]
    lst[0..num_act]
  end

  def self.transitions(num_act)
    lst = [
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 551,
            "project_id": 99,
            "project_version": 4,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 552,
            "project_id": 99,
            "project_version": 5,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "accepted",
            "story_id": 553,
            "project_id": 99,
            "project_version": 6,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 554,
            "project_id": 99,
            "project_version": 7,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 555,
            "project_id": 99,
            "project_version": 8,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 556,
            "project_id": 99,
            "project_version": 9,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 557,
            "project_id": 99,
            "project_version": 10,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "accepted",
            "story_id": 558,
            "project_id": 99,
            "project_version": 11,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 559,
            "project_id": 99,
            "project_version": 12,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 560,
            "project_id": 99,
            "project_version": 13,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 561,
            "project_id": 99,
            "project_version": 14,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 562,
            "project_id": 99,
            "project_version": 15,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 563,
            "project_id": 99,
            "project_version": 16,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 564,
            "project_id": 99,
            "project_version": 17,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 103
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 565,
            "project_id": 99,
            "project_version": 18,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 103
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 566,
            "project_id": 99,
            "project_version": 19,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 104
        },
        {
            "kind": "story_transition",
            "state": "unscheduled",
            "story_id": 567,
            "project_id": 99,
            "project_version": 20,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 104
        },
        {
            "kind": "story_transition",
            "state": "started",
            "story_id": 554,
            "project_id": 99,
            "project_version": 29,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "finished",
            "story_id": 554,
            "project_id": 99,
            "project_version": 30,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "delivered",
            "story_id": 554,
            "project_id": 99,
            "project_version": 31,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "started",
            "story_id": 563,
            "project_id": 99,
            "project_version": 32,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "finished",
            "story_id": 563,
            "project_id": 99,
            "project_version": 33,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "delivered",
            "story_id": 563,
            "project_id": 99,
            "project_version": 34,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "accepted",
            "story_id": 554,
            "project_id": 99,
            "project_version": 35,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "accepted",
            "story_id": 563,
            "project_id": 99,
            "project_version": 36,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "started",
            "story_id": 560,
            "project_id": 99,
            "project_version": 44,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "finished",
            "story_id": 560,
            "project_id": 99,
            "project_version": 45,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "delivered",
            "story_id": 560,
            "project_id": 99,
            "project_version": 46,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "accepted",
            "story_id": 560,
            "project_id": 99,
            "project_version": 47,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "started",
            "story_id": 556,
            "project_id": 99,
            "project_version": 48,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "started",
            "story_id": 559,
            "project_id": 99,
            "project_version": 49,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unstarted",
            "story_id": 561,
            "project_id": 99,
            "project_version": 50,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "unstarted",
            "story_id": 566,
            "project_id": 99,
            "project_version": 51,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "finished",
            "story_id": 559,
            "project_id": 99,
            "project_version": 52,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "delivered",
            "story_id": 559,
            "project_id": 99,
            "project_version": 53,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 102
        },
        {
            "kind": "story_transition",
            "state": "rejected",
            "story_id": 559,
            "project_id": 99,
            "project_version": 54,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        },
        {
            "kind": "story_transition",
            "state": "unstarted",
            "story_id": 552,
            "project_id": 99,
            "project_version": 55,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 100
        },
        {
            "kind": "story_transition",
            "state": "unstarted",
            "story_id": 555,
            "project_id": 99,
            "project_version": 56,
            "occurred_at": "2019-03-26T12:00:00Z",
            "performed_by_id": 101
        }
    ]
    lst[0..num_act]
  end
end