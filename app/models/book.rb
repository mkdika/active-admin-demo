class Book < ApplicationRecord
  has_paper_trail
  belongs_to :author
  belongs_to :publisher
  belongs_to :genre

  validates :title, :year, presence: true
end
