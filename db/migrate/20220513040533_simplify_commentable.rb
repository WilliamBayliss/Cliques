class SimplifyCommentable < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.remove :commentable_id
      t.remove :commentable_type
      t.references :commentable, polymorphic: true
    end

    change_table :comments do |t|
      t.remove :commentable_id
      t.remove :commentable_type
      t.references :commentable, polymorphic: true
    end
  end
end
