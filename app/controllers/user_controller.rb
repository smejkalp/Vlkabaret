class UserController < ApplicationController
  def index
    @users = User.find(:all)
  end

  def new
    @user = User.new
  end

  def create
    @user = params[:user]
     if @news.save
        flash[:notice] = 'Uživatel byl úspěšně vložen.'
      else
        flash[:notice] = 'Nastala chyba při vkládání uživatele!'
        redirect_to new_user_path
      end
      redirect_to users_path
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
