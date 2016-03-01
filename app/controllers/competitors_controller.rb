class CompetitorsController < ApplicationController

  def new
    @competitor = Competitor.new
  end

  def create
    if Competitor.exists?(url: competitor_params[:url])
      @competitor = Competitor.find_by url: competitor_params[:url]
      Follow.create(user_id: current_user.id, competitor_id: @competitor.id)
      redirect_to user_path(current_user), notice: "This competitor already exists, you can see already see its activity in your feed"
    else
      @competitor = Competitor.new(competitor_params)
      @competitor.save
      Follow.create(user_id: current_user.id, competitor_id: @competitor.id)
      redirect_to user_path(current_user), notice: "This is a new competitor, we need a little time to set it up, you will start receving activity in your feed from tomorrow"
    end
  end

  def update
    @competitor = Competitor.find(params[:id])
    @competitor.update(competitor_params)
    redirect_to competitors_path
  end


private

  def competitor_params
    params.require(:competitor).permit(:name, :url)
  end

end

