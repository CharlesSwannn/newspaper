class Section < ApplicationRecord
  has_many :article_sections, dependent: :destroy
  has_many :articles, through: :article_sections
  validates :name, presence: true, uniqueness: true
end
