json.extract! slide, :id, :title, :presentation_id, :created_at, :updated_at
json.url slide_url(slide, format: :json)
