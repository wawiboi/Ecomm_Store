class GundamModelsController < ApplicationController
  # GET /gundam_models
  # GET /gundam_models.json
  def index
    @gundam_models = GundamModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gundam_models }
    end
  end

  # GET /gundam_models/1
  # GET /gundam_models/1.json
  def show
    @gundam_model = GundamModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gundam_model }
    end
  end

  # GET /gundam_models/new
  # GET /gundam_models/new.json
  def new
    @gundam_model = GundamModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gundam_model }
    end
  end

  # GET /gundam_models/1/edit
  def edit
    @gundam_model = GundamModel.find(params[:id])
  end

  # POST /gundam_models
  # POST /gundam_models.json
  def create
    @gundam_model = GundamModel.new(params[:gundam_model])

    respond_to do |format|
      if @gundam_model.save
        format.html { redirect_to @gundam_model, notice: 'Gundam model was successfully created.' }
        format.json { render json: @gundam_model, status: :created, location: @gundam_model }
      else
        format.html { render action: "new" }
        format.json { render json: @gundam_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gundam_models/1
  # PUT /gundam_models/1.json
  def update
    @gundam_model = GundamModel.find(params[:id])

    respond_to do |format|
      if @gundam_model.update_attributes(params[:gundam_model])
        format.html { redirect_to @gundam_model, notice: 'Gundam model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gundam_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gundam_models/1
  # DELETE /gundam_models/1.json
  def destroy
    @gundam_model = GundamModel.find(params[:id])
    @gundam_model.destroy

    respond_to do |format|
      format.html { redirect_to gundam_models_url }
      format.json { head :no_content }
    end
  end
end
