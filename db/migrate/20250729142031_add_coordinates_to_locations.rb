class AddCoordinatesToLocations < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :x, :integer
    add_column :locations, :y, :integer
  end
end
