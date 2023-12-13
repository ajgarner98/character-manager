class WeaponsController < ApplicationController
  before_action :set_weapon, only: %i[ show edit update destroy ]
  before_action :set_character

  # GET /weapons or /weapons.json
  def index
    @weapons = @character.weapons
  end

  # GET /weapons/1 or /weapons/1.json
  def show
  end

  # GET /weapons/new
  def new
    @weapon = Weapon.new
  end

  # GET /weapons/1/edit
  def edit
  end

  # POST /weapons or /weapons.json
  def create
    @weapon = Weapon.new(weapon_params)

    respond_to do |format|
      if @weapon.save
        format.html { redirect_to weapon_url(@weapon), notice: "Weapon was successfully created." }
        format.json { render :show, status: :created, location: @weapon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapons/1 or /weapons/1.json
  def update
    respond_to do |format|
      if @weapon.update(weapon_params)
        format.html { redirect_to character_weapon_url(@character, @weapon), notice: "Weapon was successfully updated." }
        format.json { render :show, status: :ok, location: character_weapon_url(@character, @weapon) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapons/1 or /weapons/1.json
  def destroy
    @weapon.destroy

    respond_to do |format|
      format.html { redirect_to weapons_url, notice: "Weapon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def set_character
      @character =  Character.find(params[:character_id])
    end


    # Only allow a list of trusted parameters through.
    def weapon_params
      params.require(:weapon).permit(:damage, :weapon_type, :name, :character_id)
    end
end
