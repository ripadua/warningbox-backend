json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :email, :nome, :nomeEmpresa
  json.url usuario_url(usuario, format: :json)
end
