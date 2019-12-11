class CenterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def create?
    user_is_owner?
  end

  def new?
    create?
  end

  def show?
    return true
  end

  def update?
    user_is_owner?
  end

  private

  def user_is_owner?
    user == record.owner
  end
end
