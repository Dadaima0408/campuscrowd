class AddIconToLocations < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :icon, :string
  end
end
