class UsersController < ApplicationController
  def index
    if params[:age]
      @users = User.where("age > #{params[:age]}")
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
