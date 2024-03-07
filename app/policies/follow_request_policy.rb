class FollowRequestPolicy < ApplicationPolicy
  def create?
    true
  end

  def update?
    (user == record.sender) || (user == record.recipient)
  end

  def destroy?
    update?
  end
end
