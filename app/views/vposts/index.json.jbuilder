json.array!(@vposts) do |vpost|
  json.extract! vpost, :id, :identifier, :payload
  json.url vpost_url(vpost, format: :json)
end
