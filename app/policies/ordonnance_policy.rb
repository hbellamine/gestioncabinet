class OrdonnancePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
     record.patient.user_id == user.id
  end

end
