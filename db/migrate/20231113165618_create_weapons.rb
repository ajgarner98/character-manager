class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :damage
      t.string :weapon_type
      t.string :name
      t.integer :character_id

      t.timestamps
    end
  end
end
