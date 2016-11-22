class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @contributions = Contribution.select{ |contribution| contribution.user_id == current_user.id}
    @projects = Project.select{ |project| project.user_id == current_user.id}
  end
end
