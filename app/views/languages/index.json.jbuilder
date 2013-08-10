json.array!(@languages) do |language|
  json.extract! language, :code, :name
  json.url language_url(language, format: :json)
end
