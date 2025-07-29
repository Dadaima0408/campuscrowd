class AddTimeFieldsToCrowdReports < ActiveRecord::Migration[8.0]
  def change
    add_column :crowd_reports, :time_slot, :string
    add_column :crowd_reports, :is_recurring, :boolean
    add_column :crowd_reports, :recurrence_pattern, :string
    add_column :crowd_reports, :recurrence_end, :date
  end
end
