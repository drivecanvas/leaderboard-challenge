class CreateDrivingStats < ActiveRecord::Migration
  def change
    create_table :driving_stats do |t|
      t.integer :miles_driven
      t.references :user, index: true, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps null: false
    end
  end
end
