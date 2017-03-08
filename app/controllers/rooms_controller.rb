class RoomsController < ApplicationController
    def index
        @rooms = Room.all
        @room = Room.new 
    end

    def create
        @room = Room.new room_params
        if @room.save
            flash[:success] = 'Room created!'
        else
            flash[:error] = @room.errors.full_messages.to_sentence
        end
        redirect_to rooms_path
    end

    def show
        @room = Room.find_by_id(params[:id])
    end
    private

    def room_params
        params.require(:room).permit(:name)
    end

end
