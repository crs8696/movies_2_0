json.extract! director, :id, :date_of_birth, :name, :bio, :image, :filmography,
              :created_at, :updated_at
json.url director_url(director, format: :json)
