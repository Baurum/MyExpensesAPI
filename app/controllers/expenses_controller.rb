class ExpensesController < ApplicationController
  respond_to :json
   skip_before_action :verify_authenticity_token
  
 # GET /expenses
  def index
    respond_with Expense.all
  end
  
  # GET /expenses/id(id user)
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
  
  #
  def update
    
    
    end
  
  #
  def destroy
    
   
  end
  
  private 
    def expenses_params
      params.require(:expense).permit(:amount, :concept)
    end
  
  
end
