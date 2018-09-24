# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Speaker.create!([
{id: 1, first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 22},
{id: 2, first_name: "Lisa", last_name: "Harrison", email: "lisae@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 24},
{id: 3, first_name: "Sally", last_name: "Johnson", email: "sally@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 21},
{id: 4, first_name: "Joe", last_name: "Green", email: "joe@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Male", age: 23},
{id: 5, first_name: "Lucy", last_name: "May", email: "lucy@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 29},
{id: 6, first_name: "Phillip", last_name: "Brown", email: "phillip@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Male", age: 34},
{id: 7, first_name: "Jeffrey", last_name: "Ying", email: "jeffrey@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Male", age: 25},
{id: 8, first_name: "Linda", last_name: "Lu", email: "linda@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 19},
{id: 9, first_name: "Peter", last_name: "Pan", email: "peter@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Male", age: 12},
{id: 10, first_name: "Sarah", last_name: "Sanders", email: "sarah@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31", gender: "Female", age: 47}
])

Meeting.create!([
  {title: "Phase 1", agenda: "Ideas/Mapping", time: "09:00 AM", location: "San Francisco, CA", remote: false, speaker_id: 4},
  {title: "Phase 2", agenda: "Database Architecture", time: "09:00 AM", location: "Oakland, CA", remote: true, speaker_id: 6}
])