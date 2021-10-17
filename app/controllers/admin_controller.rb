class AdminController < ApplicationController
  before_action :authenticate_user

  def admin_home
    @ads = Ad.all
  end

  private
    def authenticate_user
      redirect_to new_user_session_path and return unless user_signed_in?
      redirect_to root_path and return unless current_user.admin
    end
end
