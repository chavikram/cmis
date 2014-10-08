class ComplaintType < ActiveRecord::Base
  has_many :complaints
  belongs_to :handler
end
