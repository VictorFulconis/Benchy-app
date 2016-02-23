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

  def update
    @competitor = Competitor.find(params[:id])
    @competitor.update(competitor_params)
    redirect_to competitors_path
  end

  def destroy
    @competitor = Competitor.find(params[:id])
    @competitor.delete
    redirect_to root_path
  end


private

  def competitor_params
    params.require(:competitor).permit(:name, :url)
  end

end

