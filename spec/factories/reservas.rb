FactoryBot.define do
  factory :reserva do
    codigo ""
    data_reserva "2018-08-06"
    data_solicitacao "2018-08-06"
    area_comum_id nil
    usuario_reserva_id ""
    usuario_liberador_id 1
    situacao_reserva_id nil
    observacao "MyText"
    periodo_reserva_id nil
    obervacao_liberador "MyText"
  end
end
