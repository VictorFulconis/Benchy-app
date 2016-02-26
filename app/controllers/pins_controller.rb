class PinsController < ApplicationController
  before_action :set_pin, only: [:destroy, :update]
  before_action :set_ad, only: [:new, :create]

  def new
    @pin = Pin.new
  end

  def create
    if pin_params[:dashboard_id] == ""
      @dashboard = current_user.dashboards.new
      @dashboard.save
      @dashboard.pins.create(ad_id: params[:ad_id])
      redirect_to edit_dashboard_path(@dashboard)
    else
      @pin = Pin.new(pin_params)
      @pin.ad_id = params[:ad_id]
      @pin.save
      redirect_to dashboard_path(@pin.dashboard)
    end
  end

  def update
    @dashboard = @pin.dashboard
    @pin.update(pin_params)
    @pin.save
    redirect_to dashboard_path(@dashboard)
  end

  def destroy
    @dashboard = @pin.dashboard
    @pin.delete
    redirect_to dashboard_path(@dashboard)
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_ad
    @ad = Ad.find(params[:ad_id])
  end

  def pin_params
    params.require(:pin).permit(:dashboard_id, :comment)
  end
end
