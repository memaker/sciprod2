class CreateAuthorsPublications < ActiveRecord::Migration
  def change
    create_join_table :authors, :publications
  end
end

