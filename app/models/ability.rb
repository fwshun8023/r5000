class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      can :read, :all
    elsif user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
