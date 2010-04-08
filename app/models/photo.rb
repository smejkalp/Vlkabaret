class Photo < ActiveRecord::Base      
  belongs_to :concert
  
  has_attached_file :image, :styles => { :thumb => "150x150>", :normal => "600x600>"}
end
