json.array!(@ethnicities) do |ethnicity|
  json.extract! ethnicity, :id, :title, :description
  json.url ethnicity_url(ethnicity, format: :json)
end
