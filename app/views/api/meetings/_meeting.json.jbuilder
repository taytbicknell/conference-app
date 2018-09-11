json.id meeting.id
json.title meeting.title
json.agenda meeting.agenda
json.time meeting.time


json.formatted do 
  json.created_at meeting.friendly_created_at
  json.updated_at meeting.friendly_updated_at
end