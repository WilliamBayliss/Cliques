class AddCommentableToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :commentable_type, :string
    add_column :posts, :commentable_id, :integer
  end
end
