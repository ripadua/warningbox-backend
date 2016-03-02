json.array!(@foto_produtos) do |foto_produto|
  json.extract! foto_produto, :id, :imagem, :dataVencimento
  json.url foto_produto_url(foto_produto, format: :json)
end
