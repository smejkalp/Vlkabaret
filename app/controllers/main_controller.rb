class MainController < ApplicationController
  def contact
  end

  def about_us
    
    @members = Role.find_by_name('member').users
  end

end
