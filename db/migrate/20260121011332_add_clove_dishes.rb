class AddCloveDishes < ActiveRecord::Migration[7.2]
  SPICE_LABEL = "スパイス/ハーブ"

  class Dish < ApplicationRecord
    self.table_name = "dishes"
  end

  class Category < ApplicationRecord
    self.table_name = "categories"
  end

  class CategoryContent < ApplicationRecord
    self.table_name = "category_contents"
  end

  def up
    add_dish(
      name: "チャイ",
      category: "サッパリ",
      time_of_days: %w[朝 おやつ],
      seasons: %w[秋 冬],
      moods: %w[リラックス],
      genres: %w[その他],
      cooking_styles: %w[簡単 温かい],
      healthiness_types: %w[ヘルシー],
      spices: %w[クローブ シナモン カルダモン]
    )
    add_dish(
      name: "スパイスクッキー",
      category: "サッパリ",
      time_of_days: %w[おやつ],
      seasons: %w[秋 冬],
      moods: %w[リラックス],
      genres: %w[洋食],
      cooking_styles: %w[簡単],
      healthiness_types: %w[ヘルシー],
      spices: %w[クローブ シナモン ナツメグ]
    )
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def add_dish(name:, category:, time_of_days:, seasons:, moods:, genres:, cooking_styles:, healthiness_types:, spices:)
    dish = Dish.find_or_initialize_by(name: name)
    dish.assign_attributes(
      time_of_days: time_of_days,
      seasons: seasons,
      moods: moods,
      genres: genres,
      cooking_styles: cooking_styles,
      healthiness_types: healthiness_types
    )
    dish.save!

    attach_category(dish, category, "気分")
    time_of_days.each { |value| attach_category(dish, value, "時間帯") }
    seasons.each { |value| attach_category(dish, value, "季節") }
    moods.each { |value| attach_category(dish, value, "気分詳細") }
    genres.each { |value| attach_category(dish, value, "ジャンル") }
    cooking_styles.each { |value| attach_category(dish, value, "調理スタイル") }
    healthiness_types.each { |value| attach_category(dish, value, "ヘルシーさ") }
    spices.each { |value| attach_category(dish, value, SPICE_LABEL) }
  end

  def attach_category(dish, category_name, label)
    category = Category.find_or_create_by!(name: category_name)
    CategoryContent.find_or_create_by!(dish: dish, category: category, label: label)
  end
end
