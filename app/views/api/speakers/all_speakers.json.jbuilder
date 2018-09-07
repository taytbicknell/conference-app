json.array! @speakers.each do |speaker|
  json.id speaker.id
  json.first_name speaker.first_name
  json.middle_name speaker.middle_name
  json.last_name speaker.last_name
  json.phone speaker.phone
  json.email speaker.email
  json.image_url speaker.image_url
  json.bio speaker.bio
end