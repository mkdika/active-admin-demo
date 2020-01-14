class Customer < ApplicationRecord

  enum membership: {
    silver: 'silver',
    gold: 'gold',
    platinum: 'platinum'
  }

  validates :name, :active, presence: true
  validates :membership, inclusion: {in: Customer.memberships, message: 'Membership is not valid'}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Invalid email' }

  def membership
    super || 'silver'
  end

  def show_fav_genres
    fav_genres.map { |f| Genre.find f }
  end
end
