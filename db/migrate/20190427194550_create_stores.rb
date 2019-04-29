class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :instagram_handle
      t.belongs_to :business, index: true, foreign_key: true
      t.timestamps
    end
  end
end
