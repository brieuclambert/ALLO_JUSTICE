class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :map ]

  def home
  end

  def dashboard
    @user = current_user
    @contributions = Contribution.select{ |contribution| contribution.user_id == current_user.id}
    @projects = Project.select{ |project| project.user_id == current_user.id}
    @my_bookings = Booking.select{ |booking| booking.user_id == current_user.id}
  end

  def map
    @projects = Project.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow "<h1>#{project.name}</h1>"
    end
    # raise
  end
end
