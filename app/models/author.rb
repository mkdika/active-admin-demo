class Author < ApplicationRecord
  has_paper_trail

  validates :name, presence: true
  validates :website, format: { with: /https?:\/\/[\S]+/, allow_blank: true, message: "invalid url"}
end
