class CreateCrowdReports < ActiveRecord::Migration[8.0]
  def change
    create_table :crowd_reports do |t|
      t.string :level
      t.text :comment
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
