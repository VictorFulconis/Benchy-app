class FollowsController < ApplicationController
  before_action :set_follow, only: [:destroy]

  def new
    @follow = Follow.new
    @competitor = Competitor.new
  end

  def create
    @follow = Follow.new(follow_params)
    @follow.user_id = current_user.id
    if @follow.save
      redirect_to user_path(current_user)
    else
      render :new
    end
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
