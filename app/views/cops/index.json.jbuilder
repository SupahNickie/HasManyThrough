json.array!(@cops) do |cop|
  json.extract! cop, :name
  json.url cop_url(cop, format: :json)
end
