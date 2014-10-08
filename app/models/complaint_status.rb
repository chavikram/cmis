class ComplaintStatus < ActiveRecord::Base
    belongs_to :complaint
    belongs_to :status
end
