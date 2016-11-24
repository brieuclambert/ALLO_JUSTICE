class BookingsController < ApplicationController

def new
  @booking = Booking.new
  @project = Project.find(params[:project_id])
end

def create
  @project = Project.find(params[:project_id])
  @booking = Booking.new(booking_params)
  @booking.date = Date.parse(params[:start_date])..Date.parse(params[:end_date])
  @booking.project_id = params[:project_id]
  @booking.user = current_user
  if @booking.save
    redirect_to project_path(@project)
  else
    render :new
  end
end

private

def booking_params
  params.require(:booking).permit(:date)
end

end
