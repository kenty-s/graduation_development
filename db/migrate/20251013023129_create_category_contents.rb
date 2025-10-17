class CreateCategoryContents < ActiveRecord::Migration[7.1]
  def change
    create_table :category_contents do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :label

      t.timestamps
    end
  end
end
