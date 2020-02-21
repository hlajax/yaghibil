class IncategoriesController < ApplicationController
  before_action :set_incategory, only: [:show, :edit, :update, :destroy]

  # GET /incategories
  # GET /incategories.json
  def index
    @incategories = Incategory.all
  end

  # GET /incategories/1
  # GET /incategories/1.json
  def show
  end

  # GET /incategories/new
  def new
    @incategory = Incategory.new
  end

  # GET /incategories/1/edit
  def edit
  end

  # POST /incategories
  # POST /incategories.json
  def create
    @incategory = Incategory.new(incategory_params)

    respond_to do |format|
      if @incategory.save
        format.html { redirect_to @incategory, notice: 'Incategory was successfully created.' }
        format.json { render :show, status: :created, location: @incategory }
      else
        format.html { render :new }
        format.json { render json: @incategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incategories/1
  # PATCH/PUT /incategories/1.json
  def update
    respond_to do |format|
      if @incategory.update(incategory_params)
        format.html { redirect_to @incategory, notice: 'Incategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @incategory }
      else
        format.html { render :edit }
        format.json { render json: @incategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incategories/1
  # DELETE /incategories/1.json
  def destroy
    @incategory.destroy
    respond_to do |format|
      format.html { redirect_to incategories_url, notice: 'Incategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incategory
      @incategory = Incategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incategory_params
      params.require(:incategory).permit(:titre, :description)
    end
end
