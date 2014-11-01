json.array!(@bettings) do |betting|
  json.extract! betting, :id
  json.url betting_url(betting, format: :json)
end
