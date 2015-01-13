json.array!(@accounts) do |account|
  json.extract! account, :id, :email, :password, :id, :domain_id
  json.url account_url(account, format: :json)
end
