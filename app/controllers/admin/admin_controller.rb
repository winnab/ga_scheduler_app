module Admin
  
  class AdminController < BaseController

  def index
    @courses = Course.all
    @users = User.all
    @rooms = Room.all
  end

  end
end
