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
        redirect_to :action => "new"
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
