class ExpensesController < ApplicationController
  respond_to :json
   skip_before_action :verify_authenticity_token
  
 # GET /expenses
  def index
    respond_with Expense.all
  end
  
  # GET /expenses/(id user)
  def show
    respond_with Expense.find(params[:id])
    
  end
  
  # POST /expenses
  def create
     expense = Expense.new(expenses_params)
    if expense.save
      render json: expense, status: :created
    else 
      render json: expense.errors, status: :unprocesable_entity
    end
  end
  
  # PUT /expenses/(id user)
  def update

    expense = Expense.find(params[:id])
    if expense.update(expenses_params)
      render json: expense, status: :accepted
    else
      render json: expense.errors, status: :unprocesable_entity
    end
      
  end
  
  # DELETE /expenses/(id user)
  def destroy
    expense = Expense.find(params[:id])
    if expense.destroy
      render json: { message: "The expense was deleted successfully" }, status: :no_content
    else
      render json: expense.errors, status: :unprocesable_entity   
    end 
   
  end
  
  private 
    def expenses_params
      params.require(:expense).permit(:amount, :concept)
    end
  
  
end
