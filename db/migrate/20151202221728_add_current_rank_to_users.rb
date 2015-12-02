class AddCurrentRankToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_rank, :integer
  end
end
