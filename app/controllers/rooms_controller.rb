class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
    @room = Room.new
    @message = Message.new

    render "index"
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end
end
