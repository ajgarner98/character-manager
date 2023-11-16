# == Schema Information
#
# Table name: features
#
#  id           :integer          not null, primary key
#  description  :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#
class Feature < ApplicationRecord
  validates(:character_id, presence: true)

  belongs_to(:characters, class_name: "Character", foreign_key: "character_id")
end
