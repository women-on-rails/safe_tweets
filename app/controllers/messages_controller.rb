class MessagesController < ApplicationController
  def index
    @safe_mode = to_boolean(params[:safe] || true)
    @toggle_safe_mode = !@safe_mode
    if @safe_mode == false
      @messages = Message.all
    else
      @messages = Message.safe
    end
  end

end
