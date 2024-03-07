class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def show?
    true
  end

  def show_tab?
    user == current_user ||
    !user.private? ||
    user.followers.include?(current_user)
  end

  def feed?
    true
  end

  def discover?
    true
  end

  def liked?
    true
  end

  def new?
    create?
  end

  def edit?
    update?
  end
end
