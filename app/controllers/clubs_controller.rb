class ClubsController < ApplicationController
  def index
    @clubs = Club.find(:all)
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(params[:club])
     if @club.save
        flash[:notice] = 'Klub byl úspěšně vložen.'
        redirect_to clubs_path
      else
        flash[:notice] = 'Nastala chyba při vkládání klubu!'
        render :action => "new"
      end
      
  end

  def edit
    @club = Club.find(params[:id])
  end
  
  def show
    @club = Club.find(params[:id])
  end

  def update
    @club = Club.find(params[:id])
    if @club.update_attributes(params[:club])
      flash[:notice] = "Klub byl úspěšně upraven."
      redirect_to clubs_path
    else
      flash[:notice] = 'Nastala chyba při upravování klubu!'
      render :action => "edit"
    end
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    redirect_to clubs_path
  end

end
