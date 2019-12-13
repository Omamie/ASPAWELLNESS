class TreatmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    user.class != Customer
  end

  def create?
    user.id == record.center_id
  end

  def edit?
    update?
  end

  def update?
    user.id == record.center_id
  end

  def destroy?
    update?
  end
end
