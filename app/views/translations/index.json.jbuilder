json.array!(@translations) do |translation|
  json.extract! translation, :language_id, :comment
  json.url translation_url(translation, format: :json)
end
