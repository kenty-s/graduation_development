class Category < ApplicationRecord
  has_many :category_contents, dependent: :destroy
  has_many :dishes, through: :category_contents
end
