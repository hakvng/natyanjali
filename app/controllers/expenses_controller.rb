class ExpensesController < ApplicationController

  before_action :admin_user

  def index
    @expenses=Expense.paginate(page: params[:page])
  end

  def new
    @expense=Expense.new
    @courses=Course.all
    @users=User.where(verified: true, admin: false)
  end

  def create
    @user=User.find_by(id: expense_params[:user_id])
    if @user
      @expense=@user.expenses.create(expense_params)
      if @expense.save
        flash[:success] = "Successfully added new expense"
        redirect_to expenses_path
      else
        @courses=Course.all
        @users=User.where(verified: true, admin: false)
        render 'new'
      end
    else
      flash[:danger] = "Invalid reg no. Failed to save"
      redirect_to new_expense_path
    end
  end


  private

    def expense_params
      params.require(:expense).permit(:name, :user_id, :course_id, :amount, :detail)
    end

end
