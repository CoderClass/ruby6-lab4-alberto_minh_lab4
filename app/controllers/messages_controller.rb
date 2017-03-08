class MessagesController < ApplicationController

  def index
    @room = Room.find_by_id(params[:room_id])
    @message = @room.messages.build
    @messages = @room.messages

    respond_to do |format|
      format.html
      format.json {render json: {messages: @messages} }
    end
  end

  def create
    @room = Room.find_by_id(params[:room_id])
    @message = @room.messages.build message_params

    if @message.save
      flash[:success] = "Created message"
    else
      flash[:error] = @message.errors.full_messages.to_sentence
    end
    redirect_to room_messages_path(@room)
  end

  private
    def message_params
      params.require(:message).permit(:content, :username)
    end
end