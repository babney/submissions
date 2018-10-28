class PublicationPolicy < ApplicationPolicy
  attr_reader :user, :publication

  def initialize(user, publication)
    @user = user
    @publication = publication
  end

  def show?
    true
  end

  def update?
    user.admin?
  end

  def create?
    true
  end

  def index?
    true
  end
end
