class SharesController < ApplicationController

  def create
    params[:share][:user_id].each do |user_id|
      if user_id != ""
        @share = Share.new(dashboard_id: params[:dashboard_id], user_id: user_id)
        @share.save
      end
      # ShareMailer.creation_confirmation(@share).deliver_now
    end
    redirect_to dashboard_path(params[:dashboard_id]), notice: "The dashboard has been shared, your team mates will be warned shortly."
  end

  private

  def share_params
    params.require(:share).permit(:user_id, :dashboard_id)
  end
end
