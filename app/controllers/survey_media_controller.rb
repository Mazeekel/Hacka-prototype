class SurveyMediaController < ApplicationController
  before_action :set_survey_medium, only: %i[ show edit update destroy ]

  # GET /survey_media or /survey_media.json
  def index
    @survey_media = SurveyMedium.all
  end

  # GET /survey_media/1 or /survey_media/1.json
  def show
  end

  # GET /survey_media/new
  def new
    @survey_medium = SurveyMedium.new
  end

  # GET /survey_media/1/edit
  def edit
  end

  # POST /survey_media or /survey_media.json
  def create
    @survey_medium = SurveyMedium.new(survey_medium_params)

    respond_to do |format|
      if @survey_medium.save
        format.html { redirect_to @survey_medium, notice: "Survey medium was successfully created." }
        format.json { render :show, status: :created, location: @survey_medium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @survey_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_media/1 or /survey_media/1.json
  def update
    respond_to do |format|
      if @survey_medium.update(survey_medium_params)
        format.html { redirect_to @survey_medium, notice: "Survey medium was successfully updated." }
        format.json { render :show, status: :ok, location: @survey_medium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @survey_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_media/1 or /survey_media/1.json
  def destroy
    @survey_medium.destroy!

    respond_to do |format|
      format.html { redirect_to survey_media_path, status: :see_other, notice: "Survey medium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_medium
      @survey_medium = SurveyMedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def survey_medium_params
      params.require(:survey_medium).permit(:media_id, :survey_id)
    end
end
