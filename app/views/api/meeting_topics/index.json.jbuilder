json.array! @meeting_topics.each do |meeting_topic|
  json.partial! "meeting_topic.json.jbuilder", meeting_topic: meeting_topic
end