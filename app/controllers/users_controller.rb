class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @average = @user.average_daily
  end
end
