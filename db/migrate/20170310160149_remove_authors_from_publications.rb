class RemoveAuthorsFromPublications < ActiveRecord::Migration
  def up
    remove_column :publications, :authors
  end
  def down
    add_column :publications, :authors, :string
  end
end
