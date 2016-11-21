class ContributionsController < ApplicationController
  def new
    @contribution = Contribution.new
  end

  def create
    @project = Project.find(params[:project_id])
  # @user = current_user
  @contribution = Contribution.new(contribution_params)
  @contribution.project = @project
  if @contribution.save
    redirect_to project_path(@project)
  else
    render :new
  end
end

private
def contribution_params
  params.require(:project).permit(:amount)
end
end
