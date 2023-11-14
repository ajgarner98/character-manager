# == Schema Information
#
# Table name: spells
#
#  id           :integer          not null, primary key
#  level        :integer
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#
class Spell < ApplicationRecord
  validates(:character_id, presence: true)

  belongs_to(:character, class_name: "Character", foreign_key: "character_id")
end
