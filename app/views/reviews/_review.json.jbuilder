json.extract! review, :id, :body, :article_id, :created_at, :updated_at
json.url review_url(review, format: :json)
