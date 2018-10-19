class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :article_id, use: :slugged

  has_many :comments, dependent: :destroy
end
