json.array!(@owners) do |owner|
  json.extract! owner, :id, :first_name, :last_name, :phone, :emergency_contact_name, :emergency_contact_phone
  json.url owner_url(owner, format: :json)
end
