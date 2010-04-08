class Photo < ActiveRecord::Base      
  belongs_to :concert
  
  has_attached_file :image
  
end
