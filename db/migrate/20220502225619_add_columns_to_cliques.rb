class AddColumnsToCliques < ActiveRecord::Migration[7.0]
  def change
    add_column :cliques, :title, :string
    add_column :cliques, :description, :string
  end
end
