json.array!(@profiles) do |profile|
  json.extract! profile, :id, :fullname, :description
  json.url profile_url(profile, format: :json)
end
