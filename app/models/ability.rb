class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can(:manage, User)
      can(:manage, Genre)
      can(:manage, Author)
      can(:manage, Publisher)
      can(:manage, Book)
      can(:manage, Customer)
    elsif user.supervisor?
      can(:manage, Genre)
      can(:manage, Author)
      can(:manage, Publisher)
      can(:manage, Book)
      can(:manage, Customer)
    end
    can(:manage, Customer)
    can(:read, ActiveAdmin::Page, name: 'Dashboard', namespace_name: 'admin')
  end
end
