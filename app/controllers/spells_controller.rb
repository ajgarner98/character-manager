class SpellsController < ApplicationController
  before_action :set_spell, only: %i[ show edit update destroy ]
  before_action :set_character

  # GET /spells or /spells.json
  def index
    @spells = @character.spells
  end

  # GET /spells/1 or /spells/1.json
  def show
  end

  # GET /spells/new
  def new
    @spell = Spell.new
  end

  # GET /spells/1/edit
  def edit
  end

  # POST /spells or /spells.json
  def create
    @spell = Spell.new(spell_params)

    respond_to do |format|
      if @spell.save
        format.html { redirect_to spell_url(@spell), notice: "Spell was successfully created." }
        format.json { render :show, status: :created, location: @spell }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spells/1 or /spells/1.json
  def update
    respond_to do |format|
      if @spell.update(spell_params)
        format.html { redirect_to (@character), notice: "Spell was successfully updated." }
        format.json { render :show, status: :ok, location: character_spell_url(@character, @spell) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spells/1 or /spells/1.json
  def destroy
    @spell.destroy

    respond_to do |format|
      format.html { redirect_to (@character), notice: 'Spell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell
      @spell = Spell.find(params[:id])
    end

    def set_character
      @character =  Character.find(params[:character_id])
    end

    # Only allow a list of trusted parameters through.
    def spell_params
      params.require(:spell).permit(:name, :level, :character_id)
    end
end
