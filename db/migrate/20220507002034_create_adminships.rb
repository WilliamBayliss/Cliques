class CreateAdminships < ActiveRecord::Migration[7.0]
  def change
    create_table :adminships do |t|

      t.timestamps
    end
  end
end
