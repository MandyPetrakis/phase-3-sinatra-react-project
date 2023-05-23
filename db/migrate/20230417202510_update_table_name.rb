class UpdateTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :item, :items
  end
end
