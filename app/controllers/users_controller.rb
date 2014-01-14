class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def show
      @user = User.find(params[:id])
   end

  def create
    @user = User.new params[:user] 
        # from public sign up page, everyone should be student
    @user[:role] = "Student"

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thanks for signing up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes params[:user]
    redirect_to user_path
  end

  def destroy
    @user = User.find params[:id]
    session[:user_id] = nil
    @user.destroy
    redirect_to root_url
  end

  def add_course
    @course = Course.find params[:id]
    if current_user
      @course.users << current_user
      redirect_to user_path current_user
    else
      redirect_to root_url
    end
  end

end
