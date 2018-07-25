class SituacaoReserva < ApplicationRecord

  def self.proximo_codigo
    ultimo_codigo = self.last.nil? ? 1 : self.last.codigo + 1
  end
end
