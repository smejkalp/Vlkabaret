class ConcertsController < ApplicationController
  def index
    @concerts = Concert.find(:all)
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = params[:concert]
    if @concert.save
      flash[:notice] = "Koncert byl úspěšně vložen."
    else 
      flash[:notice] = "Objevil se problém při vkládání koncertu, prosím informujte správce systému."
    end
    redirect_to :action => "index"
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
