class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.last
    render json: {text: @messages.text}
  end
end
