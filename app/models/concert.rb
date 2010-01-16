class Concert < ActiveRecord::Base
  belongs_to :club, :foreign_key => "club_id"
end
