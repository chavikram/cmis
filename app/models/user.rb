class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    
  has_one :contact
  has_one :handler
  accepts_nested_attributes_for :contact
      
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def with_contact
    build_contact if contact.nil?
    self
  end

end
