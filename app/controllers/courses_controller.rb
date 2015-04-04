class CoursesController < ApplicationController

  before_action :signed_in_user, only: [:index, :new, :create, :destroy]
  before_action :admin_user, only: [:new, :create, :destroy]

	def index
		@courses=Course.find_by(branch_id: params[:branch_id])
	end

	def new
		@course=Course.new
	end

	def create
		@course = Course.new(course_params, branch_id: params[:branch_id])
    if @course.save
      flash[:success] = "Course created!!"
      redirect_to branch_courses_url(branch_id: params[:branch_id])
    else
      render 'new'
    end
	end

  def edit
  	@course=Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      flash[:success] = "Course updated"
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    flash[:success] = "Course removed!!"
    redirect_to branch_courses_url(branch_id: params[:branch_id])
  end

	private

		def course_params
			params.require(:course).permit(:name, :period, :fee)
		end

end
