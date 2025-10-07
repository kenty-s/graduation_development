class CreateMoods < ActiveRecord::Migration[8.1]
  def change
    create_table :moods do |t|
      t.string :name

      t.timestamps
    end
  end
end
