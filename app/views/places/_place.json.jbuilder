json.extract! place, :id, :place_name, :place_address, :place_commune, :place_city, :place_contact_name, :place_contact_cellphone, :place_contact_email, :created_at, :updated_at
json.url place_url(place, format: :json)
