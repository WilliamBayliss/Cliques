class RemoveScoresFromPostsAndComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :score
    remove_column :comments, :score

  end
end
