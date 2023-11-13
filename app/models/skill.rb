# == Schema Information
#
# Table name: skills
#
#  id           :integer          not null, primary key
#  modifier     :integer
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#
class Skill < ApplicationRecord
end
