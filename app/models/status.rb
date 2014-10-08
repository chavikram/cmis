class Status < ActiveRecord::Base
    belongs_to :complaint
    has_many :complaint_status    
    self.inheritance_column = nil
end
