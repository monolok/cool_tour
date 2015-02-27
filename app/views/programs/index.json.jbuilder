json.array!(@programs) do |program|
  json.extract! program, :id, :city, :length, :price, :description, :name, :transportation
  json.url program_url(program, format: :json)
end
