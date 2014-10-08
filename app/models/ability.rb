class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, :all
    
    else
      can :read, :all
      can :manage, Complaint
    end
  end
end
