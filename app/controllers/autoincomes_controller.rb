class AutoincomesController < ApplicationController
  before_action :set_autoincome, only: [:show, :edit, :update, :destroy]

  # GET /autoincomes
  # GET /autoincomes.json
  def index
    @autoincomes = Autoincome.all
    @dispos = Automobile.all.where("etat_id= 2")
      def self.total_for_current_month
    where("billed_at > ? AND billed_at < ?", Time.current.beginning_of_month, Time.current.end_of_month).sum(:prix)
  end
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
        format.html { redirect_to autoincomes_url, notice: 'Entrée  ajoutée !' }
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
        format.html { redirect_to autoincomes_url, notice: 'Entrée  modifiée !' }
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
      format.html { redirect_to autoincomes_url, notice: 'Entrée supprimée !' }
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
