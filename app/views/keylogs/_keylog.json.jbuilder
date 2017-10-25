json.extract! keylog, :id, :key_number, :building, :floor, :room_number, :key_type, :key_ref, :description, :key_holder, :information, :key_with, :created_at, :updated_at
json.url keylog_url(keylog, format: :json)
