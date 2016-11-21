class ContributionsController < ApplicationController
  skip_before_action :authenticate_user! #a enlever quand on aura fini
  def new
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new
  end

  def create
    @project = Project.find(params[:project_id])
    @contribution = Contribution.new(contribution_params)
    @contribution.project_id = params[:project_id]
    @contribution.user_id = current_user.id
    if @contribution.save
      redirect_to project_path(@project)
    else
      render :new
  end
end

private
def contribution_params
  params.require(:contribution).permit(:amount)
end
end
