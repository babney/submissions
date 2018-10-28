class SubmissionPolicy < ApplicationPolicy
  attr_reader :user, :submission

  def initialize(user, submission)
    @user = user
    @submission = submission
  end

  def update?
    user.admin? || submission.work.user == user
  end

  def create?
    true
  end

  def index?
    true
  end
end
