class Reserva < ApplicationRecord
  belongs_to :area_comum_id
  belongs_to :situacao_reserva_id
  belongs_to :periodo_reserva_id

  def self.proximo_codigo
    ultimo_codigo = self.last.nil? ? 1 : self.last.codigo + 1
  end
end
