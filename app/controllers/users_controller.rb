class UsersController < ApplicationController
  def index
    @users = User.find(:all)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
     if @user.save
        flash[:notice] = 'Uživatel byl úspěšně vložen.'
        redirect_to users_path
      else
        flash[:notice] = 'Nastala chyba při vkládání uživatele!'
        render :action => "new"
      end
      
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      flash[:notice] = "Akce byla úspěšně upravena."
      redirect_to concerts_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
  end

end
