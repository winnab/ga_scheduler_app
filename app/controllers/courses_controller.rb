class CoursesController < ApplicationController
  
  authorize_resource

  def index
    @courses = Course.all
  end
  
  def new
    @course = Course.new
  end

  def show
      @course = Course.find(params[:id])
   end

  def create
    @course = Course.new params[:course]
    if @course.save
      session[:course_id] = @course.id
    else
      render :new
    end
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes params[:course]
    redirect_to user_path
  end

  def destroy
    @course = Course.find params[:id]
    session[:course_id] = nil
    @course.destroy
    redirect_to root_url
  end

  def new_user
  end

  def register
    @course = Course.find params[:id]
    @user = User.find params[:id]
    @course.users << @user
  end


end