# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Speaker.create!([
{id: 1, first_name: "Dani", last_name: "Zaghian", email: "danielle@actualize.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 2, first_name: "Lisa", last_name: "Harrison", email: "lisae@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 3, first_name: "Sally", last_name: "Johnson", email: "dsally@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 4, first_name: "Joe", last_name: "Green", email: "joe@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 5, first_name: "Lucy", last_name: "May", email: "lucy@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 6, first_name: "Phillip", last_name: "Brown", email: "phillip@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 7, first_name: "Jeffrey", last_name: "Ying", email: "jeffrey@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 8, first_name: "Linda", last_name: "Lu", email: "linda@agmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 9, first_name: "Peter", last_name: "Pan", email: "peter@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"},
{id: 10, first_name: "Sarah", last_name: "Sanders", email: "sarah@gmail.com", created_at: "Friday, Aug 31", updated_at: "Friday, Aug 31"}
])

Meeting.create!([
  {title: "Phase 1", agenda: "Ideas/Mapping", time: "09:00 AM"}
])