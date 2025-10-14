class Dish < ApplicationRecord
  has_many :category_contents, dependent: :destroy
  has_many :categories, through: :category_contents

  # カテゴリ名から料理を検索
  scope :by_category, ->(category_name) {
    joins(:categories).where(categories: { name: category_name })
  } 

  # PostgreSQLのRANDOM関数でランダムに並び替えて1件取得
  def self.random_by_category(category_name)
    by_category(category_name).order("RANDOM()").first
  end
end
