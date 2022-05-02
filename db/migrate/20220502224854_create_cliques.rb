class CreateCliques < ActiveRecord::Migration[7.0]
  def change
    create_table :cliques do |t|

      t.timestamps
    end
  end
end
