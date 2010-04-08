class PhotosController < ApplicationController
  def index
    @photos = Photo.find(:all, :order => "created_at ASC")
  end

  def new
    @photo = Photo.new
  end
           
  def show_gallery(concert_id)
     @concert = Concert.find_by_id(concert_id)
     @photos = @concert.photos
     render :action => "index"
  end
     
  def show_gallery_param
     @concert = Concert.find_by_id(params[:id])
     @photos = @concert.photos
     render :action => "index"
  end
  

  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      flash[:notice] = 'Fotka byla úspěšně vložena.'
      redirect_to photos_path
    else
      flash[:notice] = 'Nastala chyba při vkládání fotky!'
      render :action => "edit"
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end
  
  def show
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    
    if @photo.update_attributes(params[:photo])
      flash[:notice] = "Fotka úspěšně upravena."
      redirect_to photos_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Fotka úspěšně odstraněna."
    redirect_to photos_path
  end

end
