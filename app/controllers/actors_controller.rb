class ActorsController < ApplicationController
  def index
      @role = Role.find_by_name('member')
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
