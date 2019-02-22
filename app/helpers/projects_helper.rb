module ProjectsHelper
	def showAllTag
		Tag.all
	end

	def getGalleryImg(id)
		img = Gallery.find(id)
		content_tag :div,image_tag(img.name.url, class: "img-responsive"), class: "img-item"
	end
end
