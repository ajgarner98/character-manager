class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :level
      t.string :character_class
      t.string :appearance
      t.string :background
      t.integer :user_id
      t.string :name
      t.integer :armor_class
      t.integer :max_health
      t.integer :current_health
      t.string :race
      t.integer :speed
      t.string :proficiency
      t.string :image

      t.timestamps
    end
  end
end
