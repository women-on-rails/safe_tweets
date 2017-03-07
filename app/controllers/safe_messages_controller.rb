class SafeMessagesController < ApplicationController

  def create
    message = Message.find(params[:id])
    message.update(kind: 'safe')
    redirect_to params[:redirect_to]
  end

end