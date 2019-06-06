module ProjectsHelper
	require 'net/http'

	YOUTUBE_REGEX = %r(^(http[s]*:\/\/)?(www.)?(youtube.com|youtu.be)\/(watch\?v=){0,1}([a-zA-Z0-9_-]{11}))
	VIMEO_REGEX = /https?:\/\/(?:[\w]+\.)*vimeo\.com(?:[\/\w]*\/?)?\/(?<id>[0-9]+)[^\s]*/

	def showAllTag
		Tag.all
	end

	def getGalleryImg(id)
		img = Gallery.find(id)
		content_tag :div,image_tag(img.name.url, class: "img-responsive", data: { "original": img.name.url}), class: "img-item fade"
	end

	def get_video_iframe(url)
		if find_vimeo_id(url)
		  @videoid = find_vimeo_id(url)
		  get_vimeo_iframe(@videoid)
		elsif find_youtube_id(url)
		  @videoid = find_youtube_id(url)
		  get_youtube_iframe(@videoid)
		end
	end

	def find_vimeo_id(url)
		matches = VIMEO_REGEX.match url.to_str
		if matches
			@videoid = matches[:id]
		end
	end

	def find_youtube_id(url)
		matches = YOUTUBE_REGEX.match url.to_str
		if matches
		  @videoid = matches[6] || matches[5]
		end
	end

	
	def get_youtube_iframe(videoid)
	    result = %(<iframe title="YouTube video player" width="100%"
	                height="960" src="//www.youtube.com/embed/#{ videoid }"
	                frameborder="0" allowfullscreen></iframe>)
	    result.html_safe
	end

	def get_vimeo_iframe(videoid)
	    uri = "https://vimeo.com/api/oembed.json?url=https%3A//vimeo.com/#{ videoid }&width=100%&height=960"
	    response = Net::HTTP.get( URI.parse( uri ))
	    json = JSON.parse response
	    json['html'].html_safe
	end
end
