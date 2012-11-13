class GundamModelsToGradesController < ApplicationController
  # GET /gundam_models_to_grades
  # GET /gundam_models_to_grades.json
  def index
    @gundam_models_to_grades = GundamModelsToGrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gundam_models_to_grades }
    end
  end

  # GET /gundam_models_to_grades/1
  # GET /gundam_models_to_grades/1.json
  def show
    @gundam_models_to_grade = GundamModelsToGrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gundam_models_to_grade }
    end
  end

  # GET /gundam_models_to_grades/new
  # GET /gundam_models_to_grades/new.json
  def new
    @gundam_models_to_grade = GundamModelsToGrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gundam_models_to_grade }
    end
  end

  # GET /gundam_models_to_grades/1/edit
  def edit
    @gundam_models_to_grade = GundamModelsToGrade.find(params[:id])
  end

  # POST /gundam_models_to_grades
  # POST /gundam_models_to_grades.json
  def create
    @gundam_models_to_grade = GundamModelsToGrade.new(params[:gundam_models_to_grade])

    respond_to do |format|
      if @gundam_models_to_grade.save
        format.html { redirect_to @gundam_models_to_grade, notice: 'Gundam models to grade was successfully created.' }
        format.json { render json: @gundam_models_to_grade, status: :created, location: @gundam_models_to_grade }
      else
        format.html { render action: "new" }
        format.json { render json: @gundam_models_to_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gundam_models_to_grades/1
  # PUT /gundam_models_to_grades/1.json
  def update
    @gundam_models_to_grade = GundamModelsToGrade.find(params[:id])

    respond_to do |format|
      if @gundam_models_to_grade.update_attributes(params[:gundam_models_to_grade])
        format.html { redirect_to @gundam_models_to_grade, notice: 'Gundam models to grade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gundam_models_to_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gundam_models_to_grades/1
  # DELETE /gundam_models_to_grades/1.json
  def destroy
    @gundam_models_to_grade = GundamModelsToGrade.find(params[:id])
    @gundam_models_to_grade.destroy

    respond_to do |format|
      format.html { redirect_to gundam_models_to_grades_url }
      format.json { head :no_content }
    end
  end
end
