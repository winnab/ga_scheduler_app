class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role == "Admin"
      can :manage, :all
    elsif user.role == "Producer"
      can :manage, User do |u|
        u == user
      end
      can :read, :all
    else
      redirect_to root_url
    end
  end

end
