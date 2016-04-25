json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :platform, :description, :help_needed
  json.url idea_url(idea, format: :json)
end
