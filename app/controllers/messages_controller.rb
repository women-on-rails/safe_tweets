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

  def is_unsafe
    @safe_mode = to_boolean(params[:safe] || true)
    msg = Message.find(params[:id])
    msg.update(safe: false)
    msg.save
    redirect_back(fallback_location: root_path(safe: @safe_mode))
  end

  def is_safe
    @safe_mode = to_boolean(params[:safe] || true)
    msg = Message.find(params[:id])
    msg.update(safe: true)
    msg.save
    redirect_back(fallback_location: root_path(safe: @safe_mode))
  end
end
