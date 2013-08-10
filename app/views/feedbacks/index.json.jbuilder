json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :comment, :criteria, :gender
  json.url feedback_url(feedback, format: :json)
end
