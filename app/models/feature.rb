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
end
