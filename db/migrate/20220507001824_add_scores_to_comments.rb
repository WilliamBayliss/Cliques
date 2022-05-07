class AddScoresToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :score, :integer
  end
end
