class AddAcceptanceToMemberships < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :accepted, :boolean
  end
end
