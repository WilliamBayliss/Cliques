class AddScoresToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :score, :integer
  end
end
