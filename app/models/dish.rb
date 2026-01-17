class Dish < ApplicationRecord
  has_many :category_contents, dependent: :destroy
  has_many :categories, through: :category_contents
  has_one_attached :image

  # カテゴリ名から料理を検索
  scope :by_category, ->(category_name) {
    joins(:categories).where(categories: { name: category_name })
  }

  def self.search_by_conditions(params)
    scope = Dish.all
    scope = scope.where("name ILIKE ?", "%#{params[:keyword]}%")          if params[:keyword].present?
    scope = scope.by_category(params[:category])                          if params[:category].present?
    scope = scope.where("time_of_days @> ?",      [params[:time_of_day]].to_json)        if params[:time_of_day].present?
    scope = scope.where("seasons @> ?",           [params[:season]].to_json)             if params[:season].present?
    scope = scope.where("moods @> ?",             [params[:mood]].to_json)               if params[:mood].present?
    scope = scope.where("genres @> ?",            [params[:genre]].to_json)              if params[:genre].present?
    scope = scope.where("cooking_styles @> ?",    [params[:cooking_style]].to_json)      if params[:cooking_style].present?
    scope = scope.where("healthiness_types @> ?", [params[:healthiness_type]].to_json)   if params[:healthiness_type].present?
    if params[:spice_names].present?
      spice_names = Array(params[:spice_names]).compact_blank
      if spice_names.any?
        spice_dish_ids = Dish.joins(category_contents: :category)
                             .where(category_contents: { label: "スパイス/ハーブ" }, categories: { name: spice_names })
                             .select(:id)
        scope = scope.where(id: spice_dish_ids)
      end
    end
    scope
  end
  # PostgreSQLのRANDOM関数でランダムに並び替えて1件取得
  def self.random_by_category(category_name)
    by_category(category_name).order("RANDOM()").first
  end
end
