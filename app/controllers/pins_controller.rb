class PinsController < ApplicationController

  def index
    @pins = Pin.all.order("created_at desc")
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
    @pins = Pin.all.order("created_at desc")
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.update pin_params
    @pins = Pin.all.order("created_at desc")
  end

  def delete
    @pin = Pin.find(params[:id])
    @pin.destroy
    @pins = Pin.all.order("created_at desc")
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :photo, :content, :link, :user_id)
  end
end
