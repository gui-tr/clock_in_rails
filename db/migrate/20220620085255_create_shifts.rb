class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.date :date
      t.time :time_in
      t.time :time_out

      t.timestamps
    end
  end
end
