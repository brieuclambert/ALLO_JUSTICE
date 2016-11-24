class ProjectsController < ApplicationController
  skip_before_action :authenticate_user! #, only: [ :home ]
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @projects = Project.all

  end

  def show
    @booking = Booking.new
    @project = Project.find(params[:id])
    @alert_message = "Vous êtes sur #{@project.name}"
    @alert_message = "You are viewing #{@project.name}"
    @today = Time.now.strftime("%Y-%m-%d")
    @elapsed_day = (@project.echeance - @today.to_date).to_i
    @contributions = Contribution.select{ |contribution| contribution.project_id == params[:id].to_i}
    @bookings = Booking.select{ |booking| booking.project_id == params[:id].to_i}
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
    @dates_taken = find_dates_taken
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
    params.require(:project).permit(:name, :goal, :description, :photo, :address, :city, :category, :echeance)
  end

  def find_dates_taken
    all_bookings = []
    @bookings.each do |booking|
      range =
      all_bookings << (booking.start_date..booking.end_date).map{|date| date.strftime("%m/%d/%Y")}
    end
    return all_bookings.flatten
  end

end
