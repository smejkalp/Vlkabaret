class RolesController < ApplicationController
  def index
    @roles = Role.find(:all)
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role])
     if @role.save
        flash[:notice] = 'Role byla úspěšně vložena.'
        redirect_to roles_path
      else
        flash[:notice] = 'Nastala chyba při vkládání role!'
        render :action => "new"
      end
      
  end

  def edit
    @role = Role.find(params[:id])
  end
  
  def show
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      flash[:notice] = "Role byla úspěšně upravena."
      redirect_to roles_path
    else
      flash[:notice] = 'Nastala chyba při upravování role!'
      render :action => "edit"
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_path
  end

end
