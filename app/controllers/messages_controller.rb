class MessagesController < ApplicationController
  def index
    @messages = Message.safe
  end
end
