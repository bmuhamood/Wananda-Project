json.extract! offer, :id, :title, :main_image, :offer_code, :offer_instructions, :expiration_date, :opening_time, :closing_time, :mobile, :address, :images, :created_at, :updated_at
json.url offer_url(offer, format: :json)
