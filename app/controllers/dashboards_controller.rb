class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :destroy, :update]

  def show
  end

  def new
    @dashboard = Dashboard.new
  end

  def create
    @dashboard = current_user.dashboards.new(dashboard_params)
    if @dashboard.save
      redirect_to dashboard_path(@dashboard)
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @dashboard.update(dashboard_params)
    # @dashboard.save
    # redirect_to dashboard_path(@dashboard)
    if @dashboard.update(dashboard_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    # @dashboard.destroy
    # respond_to do |format|
    #   format.html { redirect_to dashboards_url, notice: 'Dashboard was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    @dashboard.delete
    redirect_to user_path(current_user)
  end

  private
  def dashboard_params
    params.require(:dashboard).permit(:name, :user_id)
  end

  def set_dashboard
    @dashboard  = Dashboard.find(params[:id])
  end

end
