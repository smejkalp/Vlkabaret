class ActorsController < ApplicationController
  def index
      @actors = Role.find_by_name('member').users
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
