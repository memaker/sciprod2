class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :value
      t.timestamp :timestamp
      t.references :sensor, index: true

      t.timestamps null: false
    end
    add_foreign_key :measurements, :sensors
  end
end
