json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :name, :phone, :fax
  json.url clinic_url(clinic, format: :json)
end
