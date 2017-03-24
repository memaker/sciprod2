class Publication < ActiveRecord::Base
	has_many :authors_publications
	has_many :authors, :through => :authors_publications
	
	validates :title, presence: true
end
