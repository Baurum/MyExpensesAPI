class ExpensesController < ApplicationController
  respond_to :json
  
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
    logger.debug params
    logger.debug params[:amount]
    
    end
  
  #
  def update
    
    
    end
  
  #
  def destroy
    
   
  end
  
end
