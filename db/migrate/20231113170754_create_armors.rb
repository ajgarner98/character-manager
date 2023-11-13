class CreateArmors < ActiveRecord::Migration[7.0]
  def change
    create_table :armors do |t|
      t.integer :armor_class
      t.string :armor_category
      t.string :armor_type
      t.string :name
      t.integer :character_id

      t.timestamps
    end
  end
end
