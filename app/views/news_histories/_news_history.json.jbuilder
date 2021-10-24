json.extract! news_history, :id, :user_id, :price, :detail, :created_at, :updated_at
json.url news_history_url(news_history, format: :json)
