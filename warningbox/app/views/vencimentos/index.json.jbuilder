json.array!(@vencimentos) do |vencimento|
  json.extract! vencimento, :id, :imagem, :dataVencimento, :estabelecimento_id
  json.url vencimento_url(vencimento, format: :json)
end
