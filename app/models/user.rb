class User < ApplicationRecord

  devise :database_authenticatable, :lockable,
         :recoverable, :rememberable

  validates :email, :display_name, presence: true

  def show_display_name
    self.display_name.present? ? self.display_name : self.email
  end

  def locked?
    self.locked_at.present?
  end
end
