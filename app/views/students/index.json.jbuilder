json.array!(@students) do |student|
  json.extract! student, :first_name, :last_name, :class_id, :gender, :parent_id
  json.url student_url(student, format: :json)
end
