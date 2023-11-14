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
  belongs_to(:character, class_name: "Character", foreign_key: "character_id")
end
