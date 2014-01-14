module Admin
  
  class CoursesController < BaseController
  
    def index
      @courses = Course.all
      @available_courses = @courses.reject{ |course| course.users.include? current_user }

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
        redirect_to admin_courses_path
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
      redirect_to admin_courses_path
    end  

    def destroy
      @course = Course.find params[:id]
      @course.destroy
      redirect_to admin_courses_path
    end

    def num_enrolled
      @course.users.count
    end

  end

end