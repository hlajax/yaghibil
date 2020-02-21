class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_administrateur!, except:[:index, :show]

  # GET /expenses
  def index
    @expenses = Expense.all
  end
  def show
  end
  # GET /expenses/new
  def new
    @expense = current_administrateur.expenses.build
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  def create
    @expense = current_administrateur.expenses.build(expense_params)

    if @expense.save
      redirect_to expenses_url, notice: 'Dépense ajoutée !'
    else
      render :new
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      redirect_to expenses_url, notice: 'Dépense modifiée !'
    else
      render :edit
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
    redirect_to expenses_url, notice: 'Dépense supprimée !'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:price, :description, :billed_at, :titre, :category_id, :source_id, :administrateur_id)
    end
end
