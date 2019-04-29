class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.belongs_to :store, index: true, foreign_key: true
      t.timestamps
    end
  end
end
