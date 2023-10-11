class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # initialize a new user if not logged in

    if user.role == 'Admin'
      can :manage, :all
    else
      can :read, :all
      can [:create, :read, :update, :destroy], Post, author_id: user.id
      can [:create, :read, :update, :destroy], Comment, author_id: user.id
    end
  end
end