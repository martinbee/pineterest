class PinsController < ApplicationController

  def index
    @pins = Pin.all.order("created_at asc")
  end

  def open_form_modal
    @pin = Pin.new
  end

  def open_pin_modal
    @pin = Pin.find(params[:id])
  end

  def create
    @pin = Pin.new pin_params
    @pin.user = @current_user
    @pin.save
    @pins = Pin.all.order("created_at asc")
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :photo, :content, :link, :user_id)
  end
end
