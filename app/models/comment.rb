class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :content, presence: true, length: { minimum: 4, maximum: 1000}
end
