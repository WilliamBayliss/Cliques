class AssertMembershipUnique < ActiveRecord::Migration[7.0]
  def change
    add_index :memberships, [:user_id, :clique_id], unique: true
  end
end
