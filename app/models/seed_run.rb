class SeedRun < ApplicationRecord
  validates :version, presence: true, uniqueness: true
end
