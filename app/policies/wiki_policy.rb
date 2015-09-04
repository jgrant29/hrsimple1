class WikiPolicy < ApplicationPolicy

  def index?
    false
  end

  def show?
    record.public? || user.present?
  end

  def create?
    user.present?
  end


  def destroy?
    user.present? && (record.user == user || user.admin?)
  end


end
