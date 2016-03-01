class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:edit, :destroy, :update]
  before_action :set_team, only: [:show]

  def show
    @share = Share.new
    if Dashboard.exists?(params[:id])
      @dashboard = Dashboard.find(params[:id])
      if @dashboard.user_id == current_user.id
        @type = "owner"
      elsif @dashboard.shares.exists?(user_id: current_user.id)
        @type = "viewer"
      else
        redirect_to user_path(current_user), alert: "You are not authorized to see this dashboard"
      end
    else
      redirect_to user_path(current_user), alert: "This dashboard does not exist"
    end
  end

  def edit
  end

  def update
    if @dashboard.update(dashboard_params)
      redirect_to dashboard_path(@dashboard)
    else
      render :edit
    end
  end

  def destroy
    @dashboard.destroy
    redirect_to user_path(current_user)
  end

  private

  def set_team
    @team = User.where(company_name: current_user.company_name)
  end

  def dashboard_params
    params.require(:dashboard).permit(:name, :main_comments)
  end

  def set_dashboard
    if Dashboard.exists?(params[:id]) && Dashboard.find(params[:id]).user_id == current_user.id
      @dashboard = current_user.dashboards.find(params[:id])
    else
      redirect_to user_path(current_user), alert: "You are not authorized to modify this dashboard"
    end
  end
end
