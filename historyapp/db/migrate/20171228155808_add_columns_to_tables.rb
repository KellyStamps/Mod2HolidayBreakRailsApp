class AddColumnsToTables < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :description, :text
    add_column :figures, :bio, :text
    add_column :landmarks, :address, :string
    add_column :buildings, :address, :string
  end
end
