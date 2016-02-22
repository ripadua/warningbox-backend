json.array!(@marcas) do |marca|
  json.extract! marca, :id, :nomeMarca
  json.url marca_url(marca, format: :json)
end
