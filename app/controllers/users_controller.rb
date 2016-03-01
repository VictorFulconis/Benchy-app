class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @created_dashboards = @user.dashboards
    @shared_dashboards = Dashboard.joins(:shares).where("shares.user_id =?", current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :company_url, :company_name)
  end

  def set_user
    @user = current_user
  end
end
