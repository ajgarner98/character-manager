task sample_data: :environment do
  p "Creating sample data"
  Feature.destroy_all
  Feat.destroy_all
  Spell.destroy_all
  Armor.destroy_all
  Weapon.destroy_all
  Character.destroy_all
  User.destroy_all

  # user sample data
  12.times do
    name = Faker::Name.first_name
    u = User.create(
      email: "#{name}@example.com",
      username: name,
      password: "wordpass",

    )
    p u.username
  end
  p "There are #{User.count} user"

  users = User.all
  # character sample data
  users.each do|user|
    3.times do
      char_name = Faker::Games::Dota.hero
      backstory = Faker::Games::DnD.background
      avatar = Faker::Avatar.image
      char_race = Faker::Games::DnD.race
      char_level = rand(1...12)
      hit_die = rand(6...10)
      c = user.characters.create(
        name: char_name,
        level: char_level,
        character_class: ["Barbarian", "Bard", "Cleric", "Warlock", "Wizard", "Monk", "Rogue", "Druid", "Fighter", "Paladin",
                          "Sorcerer", "Ranger"].sample,
        armor_class: rand(10...16),
        background: backstory,
        image: avatar,
        race: char_race,
        speed: 30,
        max_health: char_level * hit_die,
        current_health: char_level * hit_die - 3,
        strength: rand(9...17),
        dexterity: rand(9...17),
        constitution: rand(9...17),
        intelligence: rand(9...17),
        wisdom: rand(9...17),
        charisma: rand(9...17),
        appearance: ["ugly", "pretty", "tall", "short", "hairy", "super ugly", "ultra ugly", "cute", "handsome"].sample,

      )
      p c.appearance
    end
  end
  characters = Character.all
  
  # weapon sample data
  characters.each do |character|
    2.times do
      char_weapon = Faker::Games::DnD.melee_weapon
      w = character.weapons.create(
        name: char_weapon,
        damage: "1d4 slashing",
        weapon_type: ["versatile", "two-handed", "finese"].sample,
      )
      p w.name
    end
  end

  # armor sample data
  users.each do
    2.times do
      a = Armor.create(
        name: ["robes", "iron armor", "steel armor", "leather armor"].sample,
        armor_class: [14, 15, 16].sample,
        armor_type: ["heavy", "light", "cloth"].sample,
      )
      p a.name
    end
  end
  # spell sample data
  users.each do
    2.times do
      sp = Spell.create(
        name: ["Acid Arrow", "Fireball", "Animal Friendship", "Vicious Mockery", "Aid", "Detect Thoughts", "Friends"].sample,
        level: [1, 2, 3].sample,
      )
      p sp.name
    end
  end
  #feat sample_data
  users.each do
    2.times do
      character_feat = Feat.create(
        name: ["Alert", "Chef", "Athlete"].sample,
        description: "A good feat",
      )
      p character_feat.name
    end
  end

  users.each do
    2.times do
      character_feature = Feature.create(
        name: ["Second Wind", "Arcane Recovery", "Sneak Attack"].sample,
        description: "A good feature",
      )
      p character_feature.name
    end
  end
end
