class AuthorPublication < ActiveRecord::Base
  belongs_to :author
  belongs_to :publication
end
