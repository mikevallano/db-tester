require 'ffaker'

CRITS = %w[buttons mittons loki fluffy fido spike]

50.times do
  user = User.create(
                      username: FFaker::Internet.user_name,
                      email: FFaker::Internet.email,
                      password: FFaker::Internet.password,
                      confirmed_at: 2.days.ago)
  puts "created user: #{user.username}"
end

50.times do
  owner = Owner.create(
                        name: FFaker::Name.name,
                        description: FFaker::Job.title)
  puts "created owner: #{owner.name}"
end

50.times do |i|
  crit = Critter.create(
                        name: "crit #{CRITS.sample} #{i}",
                        description: "is a critter",
                        owner_id: Owner.all.sample.id,
                        weight: (5..35).to_a.sample,
                        has_collar: [true, false].sample)
  puts "created critter: #{crit.name}"
end
