json.extract! post, :id, :title, :description, :content, :active, :date, :created_at, :updated_at
json.url post_url(post, format: :json)
