class Dish < ApplicationRecord
  has_many :category_contents, dependent: :destroy
  has_many :categories, through: :category_contents
end
