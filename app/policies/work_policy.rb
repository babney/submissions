class WorkPolicy < ApplicationPolicy
  attr_reader :user, :work

  def initialize(user, work)
    @user = user
    @work = work
  end

  def update?
    user.admin? || work.user == user
  end

  def create?
    true
  end

  def index?
    true
  end
end
