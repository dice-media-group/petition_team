class AddStartTimeToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :start_time, :datetime
  end
end
