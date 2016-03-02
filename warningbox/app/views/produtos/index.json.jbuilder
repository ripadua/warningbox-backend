json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nomeProduto, :fotoProduto, :marca_id, :usuario_id
  json.url produto_url(produto, format: :json)
end
