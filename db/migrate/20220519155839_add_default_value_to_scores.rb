class AddDefaultValueToScores < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :reputation, :integer, :default => 0
    change_column :posts, :score, :integer, :default => 0
    change_column :comments, :score, :integer, :default => 0
  end
end
