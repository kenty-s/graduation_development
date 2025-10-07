class CreateTimeOfDays < ActiveRecord::Migration[8.1]
  def change
    create_table :time_of_days do |t|
      t.string :name

      t.timestamps
    end
  end
end
