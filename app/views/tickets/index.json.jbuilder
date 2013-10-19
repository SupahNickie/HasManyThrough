json.array!(@tickets) do |ticket|
  json.extract! ticket, :violation
  json.url ticket_url(ticket, format: :json)
end
