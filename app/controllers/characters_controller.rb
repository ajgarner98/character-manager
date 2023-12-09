class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  # GET /characters or /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1 or /characters/1.json
  def show
    authorize @character
    @character = Character.find(params[:id])
    @character_armors = @character.armors
    @armors = @character.armors.first

    @character = Character.find(params[:id])
    @character_weapons = @character.weapons
    @weapons = @character.weapons.first

    @character = Character.find(params[:id])
    @character_spells = @character.spells
    @spells = @character.spells.first

    @character = Character.find(params[:id])
    @character_feats = @character.feats
    @feats = @character.feats.first

    @character = Character.find(params[:id])
    @character_features = @character.features
    @features = @character.features.first

    @character = Character.find(params[:id])
    @character_skills = @character.skills
    @features = @character.features.first
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters or /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to character_url(@character), notice: "Character was successfully created." }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1 or /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to character_url(@character), notice: "Character was successfully updated." }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    @character.destroy

    respond_to do |format|
      format.html { redirect_to characters_url, notice: "Character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def increase_level
    @character = Character.find(params[:id])
    @character.increment!(:level)

    respond_to do |format|
      format.js
    end
  end

  def increase_health
    def increase_health
      @character = Character.find(params[:id])
      @character.increment!(:current_health)

      respond_to do |format|
        format.js
      end
    end
  end

  def decrease_health
    @character = Character.find(params[:id])
    @character.decrement!(:current_health)

    respond_to do |format|
      format.js
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = Character.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def character_params
    params.require(:character).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :level, :character_class, :appearance, :background, :user_id, :name, :armor_class, :max_health, :current_health, :race, :speed, :proficiency, :image)
  end
end
