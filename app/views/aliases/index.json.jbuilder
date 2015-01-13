json.array!(@aliases) do |alias|
  json.extract! alias, :id, :source, :destination, :domain_id, :id
  json.url alias_url(alias, format: :json)
end
