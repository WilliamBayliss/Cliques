class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :birthday, :date
    add_column :users, :bio, :string
    add_column :users, :reputation, :integer
  end
end
