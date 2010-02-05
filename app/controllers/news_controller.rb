class NewsController < ApplicationController
  def index
    @news_new = News.new
    @news = News.find(:all)
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
