class AdsController < ApplicationController
  before_action :set_ad, only: [:show]

  def index
    @pin = Pin.new
    @search = params[:search]
    @ads = current_user.ads
    if @search.present?
      @ads = @ads.search(@search)
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
