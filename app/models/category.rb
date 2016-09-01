class Category < ActiveRecord::Base
	belongs_to :user
	has_many :notes, :dependent => :destroy
		has_ancestry
end
