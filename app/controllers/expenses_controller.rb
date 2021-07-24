class ExpensesController < ApplicationController
  def index
    @incomes = Income.order("created_at")
    @income_sum = @incomes[0].income_sum
    my_page_show
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


  def my_page_show
    @day_params = params[:start_date]
  end
end
