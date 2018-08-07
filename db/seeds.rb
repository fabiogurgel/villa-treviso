# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Usuario.create(:email=>"admin@villatreviso.com",:password => "admin123", :password_confirmation => "admin123", :nome => 'Administrador', :ativo => true)
 Usuario.create(:email=>"teste@villatreviso.com",:password => "teste123", :password_confirmation => "teste123", :nome => 'Usuario Teste')

situacao_reserva =
 [
   {
     codigo: 1, descricao: 'Ativa',
     codigo: 2, descricao: 'Cancelada',
     codigo: 3, descricao: 'Adiada',
     codigo: 4, descricao: 'Aguardando Liberação',
     codigo: 5, descricao: 'Bloqueada'
   }
 ]
situacao_reserva.each  do |sr|
 SituacaoReserva.find_or_create_by(sr)
end
