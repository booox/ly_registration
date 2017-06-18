# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add a User for admin
# RUN: rake db:seed
u = User.new
u.email = "1@1.com"
u.password = "abcabc"

u.password_confirmation = "abcabc"

u.is_admin = true
u.save

## Add Batches

puts "Create Batches..."
Batch.create!([title: "第一批",
                start_date: 2017-7-24,
                return_date: 2017-7-28])

puts "Batches created..."
