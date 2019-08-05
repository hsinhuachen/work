class Gallery < ApplicationRecord
	mount_uploader :name, GalleryUploader
	# serialize :name
	belongs_to :project

	default_scope -> { order("sorting DESC") }
end
