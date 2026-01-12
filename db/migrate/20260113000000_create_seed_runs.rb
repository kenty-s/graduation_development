class CreateSeedRuns < ActiveRecord::Migration[7.1]
  def change
    create_table :seed_runs do |t|
      t.string :version, null: false
      t.datetime :applied_at, null: false

      t.timestamps
    end

    add_index :seed_runs, :version, unique: true
  end
end
