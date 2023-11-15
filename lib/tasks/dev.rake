task sample_data: :environment do
  p "Creating sample data"
  Character.destroy_all
  User.destroy_all

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

  3.times do
    char_name = Faker::Games::Dota.hero
    backstory = Faker::Games::DnD.background 
    avatar = Faker::Avatar.image
    char_race = Faker::Games::DnD.race
    char_level = rand(1...12)
    hit_die = rand(6...10)
    c = Character.create(
      name: char_name,
      level: char_level,
      character_class: ["Barbarian", "Bard", "Cleric", "Warlock","Wizard","Monk","Rogue","Druid","Fighter","Paladin", 
      "Sorcerer", "Ranger"].sample,
      armor_class: rand(10...16),
      background: backstory,
      image: avatar,
      race: char_race,
      speed: 30,
      max_health: char_level * hit_die,
      current_health: char_level * hit_die -3,
      strength: rand(9...17),
      dexterity: rand(9...17),
      constitution: rand(9...17),
      intelligence: rand(9...17),
      wisdom: rand(9...17),
      charisma: rand(9...17),
      appearance: ["ugly", "pretty", "tall", "short","hairy","super ugly","ultra ugly","cute","handsome"].sample,

    )
    p c.appearance
  end
end
