class AddSearchFieldsToDishes < ActiveRecord::Migration[7.2]
  def change
    add_column :dishes, :time_of_days, :jsonb
    add_column :dishes, :seasons, :jsonb
    add_column :dishes, :moods, :jsonb
    add_column :dishes, :genres, :jsonb
    add_column :dishes, :cooking_styles, :jsonb
    add_column :dishes, :healthiness_types, :jsonb
  end
end
