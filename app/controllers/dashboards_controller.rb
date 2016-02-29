class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :destroy, :update]

  def show
    @share = Share.new
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
    @dashboard.pins.destroy_all
    @dashboard.delete
    redirect_to user_path(current_user)
  end

  private
  def dashboard_params
    params.require(:dashboard).permit(:name, :main_comments)
  end

  def set_dashboard
    @dashboard = current_user.dashboards.find(params[:id])
  end

end
