class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :name
      t.string :description
      t.integer :character_id

      t.timestamps
    end
  end
end
