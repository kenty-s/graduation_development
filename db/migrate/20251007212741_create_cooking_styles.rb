class CreateCookingStyles < ActiveRecord::Migration[8.1]
  def change
    create_table :cooking_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end
