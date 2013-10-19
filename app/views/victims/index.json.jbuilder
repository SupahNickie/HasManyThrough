json.array!(@victims) do |victim|
  json.extract! victim, :name
  json.url victim_url(victim, format: :json)
end
