class Api::MessagesController < ApplicationController
  before_action :set_user
  before_action :set_message, only: [:show, :update, :destroy}]

  def index
    render json: User.messages
  end

  def show
    render json: @message
  end

  def create
    message = @user.messages.new(message_params)

    if message.save
      render json: message
    else
      render json: message.errors, status: 422
    end
  end

  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: 422
    end
  end

  def destroy
    @message.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:body)
    end
end
