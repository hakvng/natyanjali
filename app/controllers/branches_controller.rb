class BranchesController < ApplicationController

  def index
  	@branches=Branch.all
  end

  def new
  	@branch=Branch.new
  end

  def create
  	@branch=Branch.new(branch_params)
  	if @branch.save
  	  flash[:success] = "Branch Added!"
   	  redirect_to branches_url
   	else
   	  render 'new'
   	end
  end

  def edit
  	@branch=Branch.find(params[:id])
  end

  def destroy
    Branch.find(params[:id]).destroy
    flash[:success] = "Branch deleted"
    redirect_to branches_url
  end


  private
  	def branch_params
  	  params.require(:branch).permit(:name)
  	end
end
