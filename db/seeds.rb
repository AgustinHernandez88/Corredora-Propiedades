
user1 = User.create!(email: 'user.uno@email.com', password: '123456', password_confirmation: '123456')
user2 = User.create!(email: 'user.dos@email.com', password: '123456', password_confirmation: '123456')



10.times do
  Building.create!(name: Faker::Name.name, address: Faker::Address.street_address, city: Faker::Address.city)
end

Building.all.each do |building|
  rand(1..10).times do
    building.apartments.create!(number: rand(100..1000))
  end
end
