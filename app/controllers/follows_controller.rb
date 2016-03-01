class FollowsController < ApplicationController
  before_action :set_follow, only: [:destroy]

  def new
    @competitor = Competitor.new
  end

  def destroy
    @follow.delete
    redirect_to user_path(current_user)
  end

private

  def follow_params
    params.require(:follow).permit(:user_id, :competitor_id)
  end

  def set_follow
    @follow = Follow.find(params[:id])
  end

end
