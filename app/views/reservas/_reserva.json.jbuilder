json.extract! reserva, :id, :codigo, :data_reserva, :data_solicitacao, :area_comum_id_id, :usuario_reserva_id, :usuario_liberador_id, :situacao_reserva_id_id, :observacao, :periodo_reserva_id_id, :obervacao_liberador, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
