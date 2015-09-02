json.array!(@wikis) do |wiki|
  json.extract! wiki, :id, :body, :title, :image, :user_id
  json.url wiki_url(wiki, format: :json)
end
