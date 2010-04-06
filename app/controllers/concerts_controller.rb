class ConcertsController < ApplicationController
  def index
    @concerts = Concert.find(:all, :order => "date DESC")
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(params[:concert])
    if @concert.save
      flash[:notice] = "Koncert byl úspěšně vložen."
    else 
      flash[:notice] = "Objevil se problém při vkládání koncertu, prosím informujte správce systému."
    end
    redirect_to concerts_path
  end

  def edit
    @concert = Concert.find params[:id]
  end
  
  def show
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    
    if @concert.update_attributes(params[:concert])
      flash[:notice] = "Akce byla úspěšně upravena."
      redirect_to concerts_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    redirect_to concerts_path
  end

end
