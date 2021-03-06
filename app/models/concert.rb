class Concert < ActiveRecord::Base
  belongs_to :club, :foreign_key => "club_id"
  has_many :photos
  
  def club_name
    self.club.name
  end
  
  def is_in_club?
    !self.club.nil?
  end
  
  def time_range_str
    start_time.to_s(:time) + ' - ' + end_time.to_s(:time)
  end
  
  def date_str
    date.to_s(:date)
  end
  
  def name_date_str
    self.name + ' - ' + date_str
  end
end
