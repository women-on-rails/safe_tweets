class UnsafeMessagesController < ApplicationController

  def create
    message = Message.find(params[:id])
    message.update(kind: 'unsafe')
    redirect_to params[:redirect_to]
  end

end