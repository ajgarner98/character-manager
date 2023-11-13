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
end
