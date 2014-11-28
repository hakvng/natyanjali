class UsersController < ApplicationController

  before_action :signed_in_user, only: [:show, :edit, :update, :index, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user, only: [:index, :destroy]
  before_action :auth_user,   only: :show

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if @user.admin?
      render 'adminspace'
    end
  end

  def index
    @users = User.all
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

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :phone, :sex, :dob, :school, :school_class, :f_name, :f_occupation, :m_name, :m_occupation, :dance_school, :dance_teacher, :dance_years, :g_name, :place)
    end

    # Before filters

    # Confirms a logged-in user.
    def signed_in_user
      unless signed_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to signin_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def auth_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless (current_user.admin? || current_user?(@user))
    end

end
