class Vencimento < ActiveRecord::Base
  belongs_to :estabelecimento
  
  def diferencaDeDias
     (dataVencimento - Date.today).to_i
  end
  
  def as_json(options={})
     super({ methods: [:diferencaDeDias]})
  end
  
  def notificacao_45_dias
    vencimentos = Vencimento.where("dataVencimento = (?)", Date.today + 45.days).order(:dataVencimento)
    
    puts "Notificacao de 45 dias. " + vencimentos.size.to_s + " produto(s) encontrado(s)."
    
    vencimentos.each do |v|
      envia_notificacao(v, "!!!Atenção!!! Faltam 45 dias para vencimento desse produto. Tome as devidas providências para evitar a pratica de produtos vencidos. Lembre-se: Produto vencido é CRIME Lei 8.137/90 artigo 7.")
    end
  end
  
  def notificacao_30_dias
    vencimentos = Vencimento.where("dataVencimento = (?)", Date.today + 30.days).order(:dataVencimento)
    
    puts "Notificacao de 30 dias. " + vencimentos.size.to_s + " produto(s) encontrado(s)."
    
    vencimentos.each do |v|
      envia_notificacao(v, "!!!Atenção!!! Faltam 30 dias para vencimento desse produto. Tome as devidas providências para evitar a pratica de produtos vencidos. Lembre-se: Produto vencido é CRIME Lei 8.137/90 artigo 7.")
    end
  end
  
  def notificacao_15_dias
    vencimentos = Vencimento.where("dataVencimento = (?)", Date.today + 15.days).order(:dataVencimento)
    
    puts "Notificacao de 15 dias. " + vencimentos.size.to_s + " produto(s) encontrado(s)."
    
    vencimentos.each do |v|
      envia_notificacao(v, "!!!Atenção!!! Faltam 15 dias para vencimento desse produto. Tome as devidas providências para evitar a pratica de produtos vencidos. Lembre-se: Produto vencido é CRIME Lei 8.137/90 artigo 7.")
    end
  end
  
  def notificacao_3_dias
    vencimentos = Vencimento.where("dataVencimento = (?)", Date.today + 3.days).order(:dataVencimento)
    
    puts "Notificacao de 3 dias. " + vencimentos.size.to_s + " produto(s) encontrado(s)."
    
    vencimentos.each do |v|
      envia_notificacao(v, "!!!Atenção!!! Faltam 03 dias para vencimento desse produto. Conforme a Vigilância Sanitária, sugerimos que retire o produto de loja. Lembre-se: Produto vencido é CRIME Lei 8.137/90 artigo 7.")
    end
  end
  
  def envia_notificacao(vencimento, mensagem)
    
    if !Rpush::Gcm::App.find_by_name("warningbox")
      app = Rpush::Gcm::App.new
      app.name = "warningbox"
      app.auth_key = "AIzaSyCJFrGnTMykZ4O2cCnkO3KkbQY6a7SbZj0"
      app.connections = 1
      app.save!
    end
    
    ids = []
    
    vencimento.estabelecimento.usuarios.each do |usuario|
      ids << usuario.idpush
    end
    
    n = Rpush::Gcm::Notification.new
    n.app = Rpush::Gcm::App.find_by_name("warningbox")
    n.priority = 'high'
    n.registration_ids = ids
    message = mensagem
    n.data = { message: message }
    n.save!
  end
end
