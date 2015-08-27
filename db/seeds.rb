require 'faker'

# Create Users
5.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

# Create Wikis
50.times do 
  Wiki.create!(
    title:  Faker::Lorem.sentence, 
    body:   Faker::Lorem.paragraph
  )
end
wikis = Wiki.all


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"

