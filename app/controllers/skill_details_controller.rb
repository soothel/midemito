class SkillDetailsController < ApplicationController
  before_action :set_skill_detail, only: %i[ show edit update destroy ]

  # GET /skill_details or /skill_details.json
  def index
    @skill_details = SkillDetail.all
  end

  # GET /skill_details/1 or /skill_details/1.json
  def show
  end

  # GET /skill_details/new
  def new
    @skill_detail = SkillDetail.new
  end

  # GET /skill_details/1/edit
  def edit
  end

  # POST /skill_details or /skill_details.json
  def create
    @skill_detail = SkillDetail.new(skill_detail_params)

    respond_to do |format|
      if @skill_detail.save
        format.html { redirect_to skill_detail_url(@skill_detail), notice: "Skill detail was successfully created." }
        format.json { render :show, status: :created, location: @skill_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skill_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_details/1 or /skill_details/1.json
  def update
    respond_to do |format|
      if @skill_detail.update(skill_detail_params)
        format.html { redirect_to skill_detail_url(@skill_detail), notice: "Skill detail was successfully updated." }
        format.json { render :show, status: :ok, location: @skill_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_details/1 or /skill_details/1.json
  def destroy
    @skill_detail.destroy

    respond_to do |format|
      format.html { redirect_to skill_details_url, notice: "Skill detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_detail
      @skill_detail = SkillDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_detail_params
      params.require(:skill_detail).permit(:name, :skill_id, :ratio)
    end
end
