json.array!(@users) do |user|
  json.extract! user, :id, :name, :question
  json.url user_url(user, format: :json)
end
