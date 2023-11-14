# == Schema Information
#
# Table name: armors
#
#  id             :integer          not null, primary key
#  armor_category :string
#  armor_class    :integer
#  armor_type     :string
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  character_id   :integer
#
class Armor < ApplicationRecord
  validates(:character_id, presence: true)

  belongs_to(:character, class_name: "Character", foreign_key: "character_id")
end
