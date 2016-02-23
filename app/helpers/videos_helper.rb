module VideosHelper

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}?rel=0&amp;vq=hd360")
  end

  def embed2(vimeo_url)
  	
  end

end
