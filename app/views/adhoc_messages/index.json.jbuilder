json.array!(@adhoc_messages) do |adhoc_message|
  json.extract! adhoc_message, :isNew, :student_id, :user_id
  json.url adhoc_message_url(adhoc_message, format: :json)
end
