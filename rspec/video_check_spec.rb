# require 'test_helper'
require "./video_check"

RSpec.describe VideoCheck do
  describe "取得影片ID" do
  	it "是否為youtube影片" do
    	videourl = "https://www.youtube.com/watch?v=IeCTXHTN9I4"
    	video = VideoCheck.new
  		video.get_video_iframe videourl
  		expect(video.videoid).to eq("IeCTXHTN9I4")
  	end

  	it "是否為vimeo影片" do
    	videourl = "https://vimeo.com/61258216"
    	video = VideoCheck.new
  		video.get_video_iframe videourl
  		expect(video.videoid).to eq("61258216")
  	end

    it "vimeo影片ID" do
    	videourl = "https://vimeo.com/61258216"
    	video = VideoCheck.new
        video.find_vimeo_id videourl
		expect(video.videoid).to eq("61258216")
    end

    it "youtube影片ID" do
    	videourl = "https://www.youtube.com/watch?v=IeCTXHTN9I4"
    	video = VideoCheck.new
        video.find_youtube_id videourl
		expect(video.videoid).to eq("IeCTXHTN9I4")
    end
  end
end