class NotificacoesController < ApplicationController
  def create
    Vencimento.new.notificacao_45_dias()
  end
  
end
