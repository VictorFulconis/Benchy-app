class AdsController < ApplicationController
  before_action :set_ad, only: [:show]



  def index
    @pin = Pin.new
    if params[:search]
      @search = params[:search]
      if params[:search] != ""
        @activities = current_user.ads.search(params[:search])
      end
    else
      @ads = current_user.ads
    end
  end

  def show
  end

  private

  def set_ad
    @ad = Ad.find(params[:id])
  end

  def ad_params
    params.require(:ad).permit(:url, :competitor_id)
  end
end
