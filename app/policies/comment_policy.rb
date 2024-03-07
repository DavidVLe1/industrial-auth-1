class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment
  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    true
  end

  def new?
    create?
  end

  def edit?
    update?
  end

  def update?
    author?
  end



  def destroy?
    author?
  end

  private
  def author?
    user == comment.author
  end
end
