class ActorsController < ApplicationController
  def index
      @role = Role.find_by_name('herec')
      @actors = @role.users unless @role.nil?
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
