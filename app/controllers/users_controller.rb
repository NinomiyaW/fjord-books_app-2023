class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order(:id).page(params[:id]).per(3)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit; end

  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = I18n.t('controllers.notice_destroy', name: @user.email)
    redirect_to users_path, status: :see_other
  end
end
