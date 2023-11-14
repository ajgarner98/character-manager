# == Schema Information
#
# Table name: characters
#
#  id              :integer          not null, primary key
#  appearance      :string
#  armor_class     :integer
#  background      :string
#  character_class :string
#  charisma        :integer
#  constitution    :integer
#  current_health  :integer
#  dexterity       :integer
#  image           :string
#  intelligence    :integer
#  level           :integer
#  max_health      :integer
#  name            :string
#  proficiency     :string
#  race            :string
#  speed           :integer
#  strength        :integer
#  wisdom          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#
class Character < ApplicationRecord
  has_many(:armors, class_name: "Armor", foreign_key: "character_id")
  has_many(:feats, class_name: "Feat", foreign_key: "character_id")
  has_many(:features, class_name: "Feat", foreign_key: "character_id")
  has_many(:skill, class_name: "Skill", foreign_key: "character_id")
  has_many(:spell, class_name: "Spell", foreign_key: "character_id")
  has_many(:weapon, class_name: "Weapon", foreign_key: "character_id")
  belongs_to(:user, class_name: "User", foreign_key: "user_id" )

  validates :name, presence: true
end
