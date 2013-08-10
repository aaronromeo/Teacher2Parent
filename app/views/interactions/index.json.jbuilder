json.array!(@interactions) do |interaction|
  json.extract! interaction, :initiated_by_id
  json.url interaction_url(interaction, format: :json)
end
