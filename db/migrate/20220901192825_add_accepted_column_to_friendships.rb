class AddAcceptedColumnToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_column :friendships, :accepted, :boolean, default: false
  end
end
