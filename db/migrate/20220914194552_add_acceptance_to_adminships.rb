class AddAcceptanceToAdminships < ActiveRecord::Migration[7.0]
  def change
    add_column :adminships, :accepted, :boolean
  end
end
