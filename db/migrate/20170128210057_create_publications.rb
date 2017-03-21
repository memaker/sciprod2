class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :pubmed_id
      t.decimal :impact_factor
      t.date :date_of_print

      t.timestamps null: false
    end
  end
end
