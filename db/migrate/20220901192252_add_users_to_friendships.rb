class AddUsersToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_reference :friendships, :user, null: false, foreign_key: true
    add_reference :friendships, :friend, null: false

    add_foreign_key :friendships, :users, column: :friend_id
  end
end
