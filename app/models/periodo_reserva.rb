class PeriodoReserva < ApplicationRecord

  def self.proximo_codigo
    ultimo_codigo = PeriodoReserva.last.nil? ? 1 : PeriodoReserva.last.codigo + 1
  end
end
