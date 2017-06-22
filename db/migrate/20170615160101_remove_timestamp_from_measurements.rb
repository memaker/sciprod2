class RemoveTimestampFromMeasurements < ActiveRecord::Migration
  def change
    remove_column :measurements, :timestamp, :datetime
  end
end
