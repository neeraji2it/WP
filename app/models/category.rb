class Category < ActiveRecord::Base
	belongs_to :user
	 validates  :name, :presence => true
	has_many :notes, :dependent => :destroy
		has_ancestry
end
