json.array!(@videos) do |video|
  json.extract! video, :id, :link, :title, :description
  json.url video_url(video, format: :json)
end
