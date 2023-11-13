class CreateFeats < ActiveRecord::Migration[7.0]
  def change
    create_table :feats do |t|
      t.string :name
      t.string :description
      t.integer :character_id

      t.timestamps
    end
  end
end
