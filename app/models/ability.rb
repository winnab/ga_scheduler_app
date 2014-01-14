class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    can :read, Course

    if user.role == "Student" || user.role == "Instructor"
      can :read, :all
      can :manage, @current_user
    end

  end

end
