class AdsController < ApplicationController
  before_action :set_ad, only: [:show]

  def index
    @ads = current_user.ads
    @pin = Pin.new
  end

  def show
  end

  private

  def set_ad
    @ad = Ad.find(params[:id])
  end

  def ad_params
    params.require(:ad).permit(:url, :name)
  end
end
