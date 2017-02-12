class MessagesController < ApplicationController
  def index
    @messages = Message.safe
    @checked = 'checked'
    @link = unsafe_messages_path
  end

  def unsafe
    @messages = Message.all
    @link = root_path
    render "index"
  end
end
