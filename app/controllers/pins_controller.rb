class PinsController < ApplicationController

  def index
    @pins = Pin.all.order("created_at desc")
  end

  def open_modal
    @pin = Pin.new
  end

  def create
    @pin = Pin.new pin_params
    @pin.save
    @pins = Pin.all.order("created_at desc")
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :photo, :content, :link)
  end
end
