class ArticleSection < ApplicationRecord
  belongs_to :section
  belongs_to :article
  validates :article_id, uniqueness: { scope: :section_id }
end
