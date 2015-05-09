json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :username, :name, :lastname
  json.url user_url(user, format: :json)
end
