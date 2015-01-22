json.array!(@actors) do |actor|
  json.extract! actor, :id, :first_name, :last_name, :email, :phone, :city_of_residence, :sex_id, :ethnicity_id, :height, :age_min, :age_max, :hair_color, :eye_color, :website, :reel, :student, :expected_grad, :skills, :previous_experience
  json.url actor_url(actor, format: :json)
end
