class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :item do |t|
      t.string :item
      t.string :room
      t.string :category
      t.integer :quantity
    end
  end
end
