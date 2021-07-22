class ExpensesController < ApplicationController
  def index
    @incomes = Income.order("created_at")
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to root_path
    else 
      render :new
    end
  end


  private
  def income_params
    params.require(:income).permit(:amount, :memo, :category_id, :start_time).merge(user_id: current_user.id)
  end
end
