class TipoAreaComum < ApplicationRecord

  def self.proximo_codigo
    ultimo_codigo = TipoAreaComum.last.nil? ? 1 : TipoAreaComum.last.codigo + 1
  end
end
