# == Schema Information
#
# Table name: feats
#
#  id           :integer          not null, primary key
#  description  :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#
class Feat < ApplicationRecord
  belongs_to(:character, class_name: "Character", foreign_key: "character_id")
end
