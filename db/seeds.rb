# coding: utf-8

User.create!(name: "Sample User",
             email: "sample@email.com",
             password: "000000",
             password_confirmation: "000000",
             admin: true)

120.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "000000"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

puts "User Create Sucess."
