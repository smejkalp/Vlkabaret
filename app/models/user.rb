class User < ActiveRecord::Base
  belongs_to :role, :class_name => "Role", :foreign_key => "role_id"
  
  acts_as_authentic do |c|
        # for available options see documentation in: Authlogic::ActsAsAuthentic
  end
end
