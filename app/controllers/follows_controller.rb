class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new(follow_params)
    if @follow.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

private

  def competitor_params
    params.require(:competitor).permit(:user_id, :competitor_id)
  end


end
