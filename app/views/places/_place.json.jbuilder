json.extract! place, :id, :title, :main_image, :offer_code, :offer_instructions, :expiration_date, :opening_time, :closing_time, :mobile, :images, :shop_number, :street, :landmark, :created_at, :updated_at
json.url place_url(place, format: :json)
