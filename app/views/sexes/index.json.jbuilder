json.array!(@sexes) do |sex|
  json.extract! sex, :id, :title, :description
  json.url sex_url(sex, format: :json)
end
