class CharacterPolicy

  attr_reader :user :character

  def initialize(user, character)

    @user = user
    @character = character

  end

  def show?
    user == current_user
  end

end
