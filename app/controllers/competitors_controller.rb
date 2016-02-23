class CompetitorsController < ApplicationController

  def new
    @competitor = Competitor.new
  end

  def create
    @competitor = Competitor.new(competitor_params)
    if @competitor.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end


  def competitor_params
    params.require(:competitor).permit(:name, :url)
  end

end

