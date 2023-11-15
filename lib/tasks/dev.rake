task sample_data: :environment do
  p "Creating sample data"

  12.times do

    name = Faker::Name.first_name
    u = User.create(
      email: "#{name}@example.com",
      username: name,
      password: "wordpass"

    )
    p u.username
  end
  p "There are #{User.count} user"
end
