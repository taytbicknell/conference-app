json.id meeting.id
json.title meeting.title
json.agenda meeting.agenda
json.time meeting.time
json.location meeting.location
json.remote meeting.remote
json.speaker meeting.speaker
json.speaker_email meeting.speaker.email
json.speaker_id meeting.speaker_id

json.formatted do 
  json.created_at meeting.friendly_created_at
  json.updated_at meeting.friendly_updated_at
end