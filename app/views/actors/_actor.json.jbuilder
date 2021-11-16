json.extract! actor, :id, :image, :date_of_birth, :name, :details, :created_at,
              :updated_at
json.url actor_url(actor, format: :json)
