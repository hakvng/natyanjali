class ExpensesController < ApplicationController

  before_action :admin_user

  def index
    @expenses=Expense.all
  end

end
