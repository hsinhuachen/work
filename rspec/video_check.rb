class VideoCheck
	YOUTUBE_REGEX = %r(^(http[s]*:\/\/)?(www.)?(youtube.com|youtu.be)\/(watch\?v=){0,1}([a-zA-Z0-9_-]{11}))
	VIMEO_REGEX = /https?:\/\/(?:[\w]+\.)*vimeo\.com(?:[\/\w]*\/?)?\/(?<id>[0-9]+)[^\s]*/

	def initialize
		@videoid
  end

  def get_video_iframe(url)
    if find_vimeo_id(url)
      @videoid = find_vimeo_id(url)
    elsif find_youtube_id(url)
      @videoid = find_youtube_id(url)
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

  def videoid
  	@videoid
  end
end