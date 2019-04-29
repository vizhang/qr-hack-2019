class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.belongs_to :menu_category, index: true, foreign_key: true
      t.timestamps
    end
  end
end
