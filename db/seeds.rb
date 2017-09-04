require 'ffaker'

CRITS = %w[buttons mittons loki fluffy fido spike]


ActiveRecord::Base.transaction do
  50.times do
    user = User.create(
                        username: FFaker::Internet.user_name,
                        email: FFaker::Internet.email,
                        password: FFaker::Internet.password,
                        confirmed_at: 2.days.ago)
    puts "created user: #{user.username}"
  end

  User.all.each do |u|
    if u.id % 5 == 0 && u != User.first
      manager = User.find(u.id-1)
      u.manager_id = manager.id
      u.save
      manager.add_role(:manager)
      puts "#{u.username} was assigned to manager: #{manager.username}"
    end
  end

  # 50.times do
  #   owner = Owner.create(
  #                         name: FFaker::Name.name,
  #                         description: FFaker::Job.title)
  #   puts "created owner: #{owner.name}"
  # end

  # 50.times do |i|
  #   crit = Critter.create(
  #                         name: "crit #{CRITS.sample} #{i}",
  #                         description: "is a critter",
  #                         owner_id: Owner.all.sample.id,
  #                         weight: (5..35).to_a.sample,
  #                         has_collar: [true, false].sample)
  #   puts "created critter: #{crit.name}"
  # end

  5.times do
    category = Category.create(name: FFaker::Product.brand)
  end

  10.times do |i|
    product = Product.create(
                            name: FFaker::Product.product_name,
                            price: rand(10.01..99.99)
                            )
    product.categories << Category.all.sample
    puts "product created: #{product.name}"
  end

  100.times do
    transaction = Transaction.create(
                                      product_id: Product.all.sample.id,
                                      user_id: User.all.sample.id,
                                      ordered_at: (1..7).to_a.sample.days.ago.to_date)
    puts "transaction created: #{transaction.id}"
  end

end #end transaction
