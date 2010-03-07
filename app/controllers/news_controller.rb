class NewsController < ApplicationController
  def index
    @news = News.find(:all, :order => "created_at ASC")
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(params[:news])
    if @news.save
      flash[:notice] = 'Novinka byla úspěšně vložena.'
    else
      flash[:notice] = 'Nastala chyba při vkládání novinky!'
    end
    redirect_to :action => "index"
  end

  def edit
    @news = News.find(params[:id])
  end
  
  def show
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    
    if @news.update_attributes(params[:news])
      flash[:notice] = "Novinka úspěšně upravena."
    else
      render :action => "edit"
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to :action => "index"
  end

end
