class SearchHistory < ApplicationRecord
  belongs_to :user
  belongs_to :dish, optional: true
  scope :recent, -> { order(executed_at: :desc) }
end
