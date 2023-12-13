class CharacterPolicy < ApplicationPolicy 

  attr_reader :user, :character

  def initialize(user, character)

    @user = user
    @character = character

  end

  def show?
    user == character.user
  end

end
