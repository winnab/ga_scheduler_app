module Admin

    class UsersController < BaseController
    
    load_and_authorize_resource except: [:index, :show]

    def index
      @users = User.order([:role, :last_name]).all
    end
    
    def new
    end

    def show
      @user = User.find params[:id]
      @courses = Course.all
      @available_courses = @courses.reject{ |course| course.users.include? @user }
    end

    def create
      @user = User.new params[:user]
      
      if @user.save
        redirect_to admin_users_path
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
      redirect_to admin_users_path
    end  

    def destroy
      @user = User.find params[:id]
      @user.destroy
      redirect_to admin_users_path
    end

    def add_course
      @course = Course.find params[:course_id]
      @user = User.find params[:id]
      @course.users << @user
      redirect_to admin_user_path @user
    end

    def drop_course
      @course = Course.find params[:course_id]
      @user = User.find params[:id]
      @course.users.delete(@user)
      redirect_to admin_user_path @user
    end

  end

end 
