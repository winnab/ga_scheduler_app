module Admin

  class RoomsController < BaseController

      def index
      @rooms = Room.all.sort_by(&:name)
    end
    
    def new
      @room = Room.new
    end

    def show
        @room = Room.find(params[:id])
     end

    def create
      @room = Room.new params[:room]
      
      if @room.save
        redirect_to admin_rooms_path
      else
        render :new
      end
    end

    def edit
      @room = Room.find params[:id]
    end

    def update
      @room = Room.find params[:id]
      @room.update_attributes params[:room]
      redirect_to admin_rooms_path
    end  

    def destroy
      @room = Room.find params[:id]
      @room.destroy
      redirect_to admin_rooms_path
    end
    
  end

end
