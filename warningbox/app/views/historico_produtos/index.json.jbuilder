json.array!(@historico_produtos) do |historico_produto|
  json.extract! historico_produto, :id, :produto_id, :dataVencimento
  json.url historico_produto_url(historico_produto, format: :json)
end
