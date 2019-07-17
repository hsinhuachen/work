class Tag < ApplicationRecord
	has_many :taggings
	has_many :projects, through: :taggings
	validates :name, presence: true

	def tag_title
		@name = Tag.find(1)
	end
end
