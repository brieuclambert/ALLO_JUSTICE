class BookingsController < ApplicationController

def new
  @booking = Booking.new
  @project = Project.find(params[:project_id])
end

def create
  @project = Project.find(params[:project_id])
  @booking = Booking.new
  @booking.start_date = Date.strptime(params[:start_date], "%m/%d/%Y")
  @booking.end_date = Date.strptime(params[:end_date], "%m/%d/%Y")
  @booking.project = @project
  @booking.user = current_user
  @booking.status = "Pending"
  if @booking.save
    redirect_to project_path(@project)
    flash[:notice] = "Votre booking a bien été pris en compte, vous serez prévenu de la confirmation"
  else
    render :new
  end
end

  def validate
    @project = Project.find(params[:project_id])
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @project = Project.find(params[:project_id])
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to dashboard_path
  end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
