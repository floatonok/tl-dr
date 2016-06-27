class Summary < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :summary, presence: true
  validates_length_of :summary, maximum: 140
end
