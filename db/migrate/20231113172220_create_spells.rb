class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.integer :character_id

      t.timestamps
    end
  end
end
