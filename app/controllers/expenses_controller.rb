class ExpensesController < ApplicationController
  def index
    @incomes = Income.order("created_at")
  end

  def new
  end
end
