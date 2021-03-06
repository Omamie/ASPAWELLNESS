class CenterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def show?
    true
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
