class Author < ActiveRecord::Base
	has_many :authors_publications
	has_many :publications, :through => :authors_publications
end
