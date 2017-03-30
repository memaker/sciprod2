class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :interests, :authors
  end
end
