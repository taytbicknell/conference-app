json.id speaker.id
json.first_name speaker.first_name
json.middle_name speaker.middle_name
json.last_name speaker.last_name
json.email speaker.email
json.gender speaker.gender


json.formatted do 
  json.created_at speaker.friendly_created_at
  json.updated_at speaker.friendly_updated_at
  json.full_name speaker.full_name
end