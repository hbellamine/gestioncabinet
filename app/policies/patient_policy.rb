class PatientPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def edit?
      return true
  end

  def update?
  return true
  end


  def new?
    return true
  end

    def create?
    record.user == user
  end

end
