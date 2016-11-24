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
  if @booking.save
    redirect_to project_path(@project)
    flash[:notice] = "Votre booking a bien été pris en compte, vous serez prévenu de la confirmation"
  else
    render :new
  end
end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
