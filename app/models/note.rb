class Note < ActiveRecord::Base
	has_ancestry
	belongs_to :user
	belongs_to :category
end
