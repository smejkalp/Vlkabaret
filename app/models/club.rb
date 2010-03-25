class Club < ActiveRecord::Base
  has_many :concerts
  
  def www_http
    return nil if self.www == "" 
    return "http://" + self.www if self.www["http://"].nil?
    return self.www
  end
  
end
