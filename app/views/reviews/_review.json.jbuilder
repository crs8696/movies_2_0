json.extract! review, :id, :movie_id, :director_id, :year, :duration,
              :review_content, :cast, :created_at, :updated_at
json.url review_url(review, format: :json)
