class Club < ActiveRecord::Base
  has_many :concerts
  
  def www_http
    return nil if  (self.www.nil? || self.www == "")
    return "http://" + self.www if self.www["http://"].nil?
    return self.www
  end
  
  def map_link_http
    return nil if (self.map_link.nil? || self.map_link == "")
    return "http://" + self.map_link if self.map_link["http://"].nil?
    return self.map_link
  end
  
end
