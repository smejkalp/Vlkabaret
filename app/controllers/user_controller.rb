class UserController < ApplicationController
  def index
    @users = User.find(:all)
  end

  def new
    @user = User.new
  end

  def create
    @user = params[:user]
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
