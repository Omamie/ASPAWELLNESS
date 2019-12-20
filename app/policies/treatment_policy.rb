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
    user.id == record.center_id
  end

  def create?
    user.id == record.center_id
  end

  def edit?
    update?
  end

  def update?
    user.centers.include? record.center
    # user.id == record.center_id
  end

  def destroy?
    update?
  end
end
