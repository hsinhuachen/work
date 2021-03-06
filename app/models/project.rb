class Project < ApplicationRecord
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :gallerys, -> {  order('name asc') }, dependent: :destroy
	accepts_nested_attributes_for :gallerys
	mount_uploader :thumb, AvatarUploader
	validates :title, presence: true

	default_scope -> { order('sorting DESC') }
	# scope :category, -> { joins(:tags).where(:tags => { :id => 1}).where(published: true).order('sorting DESC') }
	scope :category, ->(category) { joins(:tags).where(:tags => { "name" => category }).where(published: true).order('sorting DESC') }

	def tag_list
	    tags.map(&:name).join(', ')
	end

	def tag_list=(names)
    	self.tags = names.reject(&:blank?).map do |item|
      		Tag.where(name: item.strip).first_or_create!
    	end
   	end

   	def tag_items
		tags.map(&:name)
	end

	def tag_ids=(ids)
	    self.tags = Array(ids).reject(&:blank?).map { |id|
	      (id =~ /^\d+$/) ? Tag.find(id) : Tag.new(name: id)
	    }
	end

	def checksorting
		if !self.sorting
			# get maximun sorting
			if Project.any?
				Project.maximum("sorting") + 10
			else
				10
			end
		else
			self.sorting
		end
	end

	def featured
		self.feature
	end

	def status
		self.published
	end

	def gallery_items
		gallerys.map(&:name).join(', ')
	end

	def img_name(id)
		Gallery.find(id)
	end

	def delImg
	end

	def previous
	  Project.where(["sorting < ?", sorting]).where(published: true).last
	end

	def next
	  Project.where(["sorting > ?", sorting]).where(published: true).first
	end
end
