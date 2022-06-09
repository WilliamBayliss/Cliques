class AddReputationToCliques < ActiveRecord::Migration[7.0]
  def change
    add_column :cliques, :reputation, :integer, :default => 0
  end
end
