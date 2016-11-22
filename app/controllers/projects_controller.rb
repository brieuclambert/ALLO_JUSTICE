class ProjectsController < ApplicationController
  skip_before_action :authenticate_user! #, only: [ :home ]
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @contributions = Contribution.select{ |contribution| contribution.project_id == params[:id].to_i}
    @sum = 0
    @contributions.each do |contribution|
      @sum += contribution.amount
    end
    if @sum < @project.goal
      @percentage = (@sum.fdiv(@project.goal) * 100).round(0)
    else
      @percentage = 100
    end
    @contribution = Contribution.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :goal, :description, :photo)
  end

end
