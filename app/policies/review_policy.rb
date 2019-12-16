class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    a = Booking.find(user.id)
    a.treatment_id == @treatment.id
  end
end
