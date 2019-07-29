class Cycle < ApplicationRecord
	mount_uploader :image ,ImageUploader
	validates :image, presence: true

	default_scope -> { order('sorting DESC') }

	def status
		self.publish
	end
end

