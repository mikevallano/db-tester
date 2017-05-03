require 'ffaker'
50.times do
  User.create(
  username: FFaker::Internet.user_name,
  email: FFaker::Internet.email,
  password: FFaker::Internet.password,
  confirmed_at: 2.days.ago)
end

50.times do
  Owner.create(
    name: FFaker::Name.name,
    description: FFaker::Job.title)
end
