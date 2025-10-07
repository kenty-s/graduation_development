class CreateHealthinessTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :healthiness_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
