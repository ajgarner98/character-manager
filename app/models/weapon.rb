# == Schema Information
#
# Table name: weapons
#
#  id           :integer          not null, primary key
#  damage       :string
#  name         :string
#  weapon_type  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#
class Weapon < ApplicationRecord
  validates(:character_id, presence: true)

  belongs_to(:characters, class_name: "Character", foreign_key: "character_id")
  
end
