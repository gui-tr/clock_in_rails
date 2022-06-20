class AddShiftDurationToShifts < ActiveRecord::Migration[7.0]
  def change
    add_column :shifts, :shift_duration, :integer
  end
end
