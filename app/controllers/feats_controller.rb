class FeatsController < ApplicationController
  before_action :set_feat, only: %i[ show edit update destroy ]
  before_action :set_character

  # GET /feats or /feats.json
  def index
    @feats = @character.feats
  end

  # GET /feats/1 or /feats/1.json
  def show
  end

  # GET /feats/new
  def new
    @feat = Feat.new
  end

  # GET /feats/1/edit
  def edit
  end

  # POST /feats or /feats.json
  def create
    @feat = Feat.new(feat_params)

    respond_to do |format|
      if @feat.save
        format.html { redirect_to feat_url(@feat), notice: "Feat was successfully created." }
        format.json { render :show, status: :created, location: @feat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feats/1 or /feats/1.json
  def update
    respond_to do |format|
      if @feat.update(feat_params)
        format.html { redirect_to (@character), notice: "Feat was successfully updated." }
        format.json { render :show, status: :ok, location: character_feat_url(@character, @feat) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feats/1 or /feats/1.json
  def destroy
    @feat.destroy

    respond_to do |format|
      format.html { redirect_to (@character), notice: 'Feat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feat
      @feat = Feat.find(params[:id])
    end

    def set_character
      @character = Character.find(params[:character_id])
    end

    # Only allow a list of trusted parameters through.
    def feat_params
      params.require(:feat).permit(:name, :description, :character_id)
    end
end
