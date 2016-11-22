class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])

    @booking = Booking.new(booking_params)
    @booking.date = Date.strptime(booking_params[:date], '%m/%d/%Y')
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
    # params.require(:booking).permit(:date, :user_id)
    params.require(:booking).permit(:date)
  end



end
