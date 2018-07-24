class AreaComum < ApplicationRecord
  belongs_to :tipo_area_comum

  def self.proximo_codigo
    ultimo_codigo = self.last.nil? ? 1 : self.last.codigo + 1
  end
end
