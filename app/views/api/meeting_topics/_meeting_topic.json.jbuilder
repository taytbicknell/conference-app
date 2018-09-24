json.id meeting_topic.id
json.meeting_id meeting_topic.meeting_id
json.topic_id meeting_topic.topic_id


json.formatted do 
  json.created_at meeting_topic.friendly_created_at
  json.updated_at meeting_topic.friendly_updated_at
end