class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  layout "user_template"
  
  # GET /skills or /skills.json
  def index
    @skill = Skill.find_by(deleted: 0, user_id: current_user.id)
  end

  # GET /skills/1 or /skills/1.json
  def show
  end

  # GET /skills/new
  def new
    @skill = Skill.new
    @skill_nested = @skill.skill_details.build
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills or /skills.json
  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        #format.html { redirect_to skill_url(@skill), notice: "Skill was successfully created." }
        format.html { redirect_to skills_url, notice: "Datos guardados correctamente." }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills/1 or /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        #format.html { redirect_to skill_url(@skill), notice: "Skill was successfully updated." }
        format.html { redirect_to skills_url, notice: "Datos guardados correctamente." }        
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1 or /skills/1.json
  def destroy
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to skills_url, notice: "Skill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit!
    end
end
