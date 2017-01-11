json.extract! account, :id, :balance, :holder_id, :deposit_type_id, :created_at, :updated_at
json.url account_url(account, format: :json)