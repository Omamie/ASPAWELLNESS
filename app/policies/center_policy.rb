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
    user.class != Customer
  end

  def new?
    create?
  end

  def show?
    return true
  end

  def edit?
    update?
  end

  def update?
    user.id == record.owner_id
  end

  def destroy?
    update?
  end
end
