class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :article_sections, dependent: :destroy
  has_many :sections, through: :article_sections
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 30 }
end
