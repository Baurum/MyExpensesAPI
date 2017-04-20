class ExpensesController < ApplicationController
  respond_to :json
  
 #
  def index
    respond_with Expense.all
  end
  
  #
  def show
    
  end
  
  #
  def create
    
    end
  
  #
  def update
    
    
    end
  
  #
  def destroy
    
   
  end
  
end
