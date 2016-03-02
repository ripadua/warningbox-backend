class Vencimento < ActiveRecord::Base
  belongs_to :estabelecimento
  
  def diferencaDeDias
     (dataVencimento - Date.today).to_i
  end
  
  def as_json(options={})
     super({ methods: [:diferencaDeDias]})
  end
end
