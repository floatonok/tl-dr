class Post < ApplicationRecord
  belongs_to :user
  has_many :summaries

  validates :title, presence: true
  validates :body, presence: true
end
