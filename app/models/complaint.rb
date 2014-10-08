class Complaint < ActiveRecord::Base
    
  belongs_to :complaint_type
  belongs_to :status
  belongs_to :user
  has_many :complaint_movements
  has_many :complaint_statuses

  accepts_nested_attributes_for :complaint_statuses
  
  scope :user, -> (userid) { where user_id: userid}
  validates_presence_of :remarks, :location, :contact_no,:date_since, :intercom, :room_no
  
  def self.search(search)
    if search
      where(:id=>"#{search}")
      #find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      where(:id=>nil)
    end
  end

end