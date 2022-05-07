class CreateAdminships < ActiveRecord::Migration[7.0]
  def change
    create_table :adminships do |t|
      t.belongs_to :user
      t.belongs_to :clique
      t.timestamps
    end
  end
end
