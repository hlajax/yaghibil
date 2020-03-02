class AutoincomesController < ApplicationController
  before_action :set_autoincome, only: [:show, :edit, :update, :destroy]

  # GET /autoincomes
  # GET /autoincomes.json
  def index
    @autoincomes = Autoincome.all
  end

  # GET /autoincomes/1
  # GET /autoincomes/1.json
  def show
  end

  # GET /autoincomes/new
  def new
    @autoincome = current_administrateur.autoincomes.build
  end

  # GET /autoincomes/1/edit
  def edit
  end

  # POST /autoincomes
  # POST /autoincomes.json
  def create
    @autoincome = current_administrateur.autoincomes.build(autoincome_params)

    respond_to do |format|
      if @autoincome.save
        format.html { redirect_to @autoincome, notice: 'Autoincome was successfully created.' }
        format.json { render :show, status: :created, location: @autoincome }
      else
        format.html { render :new }
        format.json { render json: @autoincome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autoincomes/1
  # PATCH/PUT /autoincomes/1.json
  def update
    respond_to do |format|
      if @autoincome.update(autoincome_params)
        format.html { redirect_to @autoincome, notice: 'Autoincome was successfully updated.' }
        format.json { render :show, status: :ok, location: @autoincome }
      else
        format.html { render :edit }
        format.json { render json: @autoincome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autoincomes/1
  # DELETE /autoincomes/1.json
  def destroy
    @autoincome.destroy
    respond_to do |format|
      format.html { redirect_to autoincomes_url, notice: 'Autoincome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autoincome
      @autoincome = Autoincome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autoincome_params
      params.require(:autoincome).permit(:price, :description, :travaux, :designation, :billed_at, :administrateur_id, :automobile_id)
    end
end
