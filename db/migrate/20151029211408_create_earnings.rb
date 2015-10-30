class CreateEarnings < ActiveRecord::Migration
  def change
    create_table :earnings do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :amount, precision: 8, scale: 2
      t.datetime :earned_at

      t.timestamps null: false
    end
  end
end
