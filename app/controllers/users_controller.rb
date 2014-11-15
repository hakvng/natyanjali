class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "You have registered successfully!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :phone, :sex, :dob, :school, :school_class, :f_name, :f_occupation, :m_name, :m_occupation, :dance_school, :dance_teacher, :dance_years, :g_name, :place)
  end
end
