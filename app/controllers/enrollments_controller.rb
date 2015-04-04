class EnrollmentsController < ApplicationController

  before_action :signed_in_user, only: [:new , :create, :index, :destroy, :approve]
  before_action :admin_user, only: [:index, :destroy, :approve]

  def index
    @enrollments=Enrollment.where(approved: true).joins(:user, :course).paginate(page: params[:page])
  end

  def applications
    @enrollments=Enrollment.where(approved: false).joins(:user, :course).paginate(page: params[:page])
    render 'index'
  end

  def new
    @user=current_user
    @branches=Branch.all
    @enrollment=Enrollment.new
  end

  def create
  	@enrollment = Enrollment.new(enroll_params)
    if @enrollment.save
      #send mail
      flash[:success] = "Applied successfully!! Kindly wait for aprroval notification via email"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def approve
    @enrollment=Enrollment.find(params[:id])
    if @enrollment.update_attribute(:approved, true)
      flash[:success] = "Approved"
      #send mail
    else
      flash[:danger] = "Approval failed"
    end
    redirect_to enrollments_url
  end


  def destroy
    Enrollment.find(params[:id]).destroy
    flash[:success] = "Enrollment removed"
    redirect_to current_user
  end

  private

  	def enroll_params
  	  params.require(:enrollment).permit(:course_id, :user_id)
  	end

end
