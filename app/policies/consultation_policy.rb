class ConsultationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end
  def destroy?
    return true
  end

    def show?
    record.user_id == user.id
  end

    def create?
    record.user_id == user.id
  end

end
