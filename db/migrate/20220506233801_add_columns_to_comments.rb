class AddColumnsToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :content, :string
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
