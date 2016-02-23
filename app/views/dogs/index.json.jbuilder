json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :dob, :breed_id, :medical_conditions, :in_daycare, :vet_id
  json.url dog_url(dog, format: :json)
end
