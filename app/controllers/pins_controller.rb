class PinsController < ApplicationController
  before_action :set_pin, only: [:destroy]
  before_action :set_ad, only: [:new]

  def new
    @pin = Pin.new
  end

  def create
    @pin =  Pin.new(pin_params)
    if @pin.save
      redirect_to dashboards(@dashboard)
    else
      render :new
    end
  end



  def destroy
    @dashboard = @pin.dashboard
    @pin.delete
    redirect_to dashboards(@dashboard)
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_ad
    @ad = Ad.find(params[:ad_id])
  end

  def pin_params
    params.require(:pin).permit(:dashboard_id, :ad_id)
  end
end
