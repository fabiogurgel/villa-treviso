class TipoUsuario < ApplicationRecord

  validates_presence_of :descricao, :codigo
  validates_uniqueness_of :descricao, :codigo
  validates_numericality_of :codigo, :on => :create

  def self.proximo_codigo
    ultimo_codigo = self.last.nil? ? 1 : self.last.codigo + 1
  end
end
