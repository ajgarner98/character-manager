task sample_data: :environment do
  p "Creating sample data"

  12.times do

    name = Faker::Name.first_name
    User.create(
      email: "#{name}@example.com",
      user_name: name,

    )
    p "There are #{User.count} user"
  end
end
