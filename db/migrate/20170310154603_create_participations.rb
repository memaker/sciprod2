class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :publication, index: true
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :participations, :publications
    add_foreign_key :participations, :authors
  end
end
