class AddOwnerId < ActiveRecord::Migration[6.1]
  def change
    add_column :item, :owner_id, :integer 
  end
end
