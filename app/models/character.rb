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
  has_many(:features, class_name: "Feature", foreign_key: "character_id")
  has_many(:skills, class_name: "Skill", foreign_key: "character_id")
  has_many(:spells, class_name: "Spell", foreign_key: "character_id")
  has_many(:weapons, class_name: "Weapon", foreign_key: "character_id")
  belongs_to(:user, class_name: "User", foreign_key: "user_id" )
  # one image:
  # has_one_attached :image, service: :cloudinary
  # array of simultaneoulsy uploaded images:
  # has_many_attached :images, service: :cloudinary
  

  validates :name, presence: true
end
