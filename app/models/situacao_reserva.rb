class SituacaoReserva < ApplicationRecord

  def self.proximo_codigo
    ultimo_codigo = self.last.nil? ? 1 : self.last.codigo + 1
  end

  def self.ativa
    where(codigo: 1).first
  end
  def self.cancelada
    where(codigo: 2).first
  end
  def self.adiada
    where(codigo: 3).first
  end
  def self.aguardando_liberacao
    where(codigo: 4).first
  end
  def self.bloqueada
    where(codigo: 5).first
  end

end
