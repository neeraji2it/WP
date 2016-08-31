class Note < ActiveRecord::Base
	has_ancestry
	belongs_to :user
	belongs_to :category
  validates :category_id, :name, :body, :presence => true
  has_attached_file :image
  validates_attachment_content_type :image,
    :content_type => [ 'image/jpeg','image/jpg', 'image/png', 'image/gif','image/bmp', 'image/x-png', 'image/pjpeg' ]
end
