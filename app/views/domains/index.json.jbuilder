json.array!(@domains) do |domain|
  json.extract! domain, :id, :domainname, :active, :id
  json.url domain_url(domain, format: :json)
end
