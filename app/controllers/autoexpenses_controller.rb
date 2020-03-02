class AutoexpensesController < ApplicationController
  before_action :set_autoexpense, only: [:show, :edit, :update, :destroy]

  # GET /autoexpenses
  # GET /autoexpenses.json
  def index
    @autoexpenses = Autoexpense.all
    @fonds = Fond.all
  end

  # GET /autoexpenses/1
  # GET /autoexpenses/1.json
  def show
  end

  # GET /autoexpenses/new
  def new
    @autoexpense = current_administrateur.autoexpenses.build
  end

  # GET /autoexpenses/1/edit
  def edit
  end

  # POST /autoexpenses
  # POST /autoexpenses.json
  def create
    @autoexpense = current_administrateur.autoexpenses.build(autoexpense_params)

    respond_to do |format|
      if @autoexpense.save
        format.html { redirect_to autoexpenses_url, notice: 'Dépense ajoutée !' }
        format.json { render :show, status: :created, location: @autoexpense }
      else
        format.html { render :new }
        format.json { render json: @autoexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autoexpenses/1
  # PATCH/PUT /autoexpenses/1.json
  def update
    respond_to do |format|
      if @autoexpense.update(autoexpense_params)
        format.html { redirect_to autoexpenses_url, notice: 'Dépense modifiée !' }
        format.json { render :show, status: :ok, location: @autoexpense }
      else
        format.html { render :edit }
        format.json { render json: @autoexpense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autoexpenses/1
  # DELETE /autoexpenses/1.json
  def destroy
    @autoexpense.destroy
    respond_to do |format|
      format.html { redirect_to autoexpenses_url, notice: 'Dépense supprimée !' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autoexpense
      @autoexpense = Autoexpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autoexpense_params
      params.require(:autoexpense).permit(:price, :description, :travaux, :designation, :billed_at, :administrateur_id, :automobile_id)
    end
end
