class ConcertsController < ApplicationController
  def index
    @concerts = Concert.find(:all)
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
