json.extract! situacao_reserva, :id, :codigo, :descricao, :created_at, :updated_at
json.url situacao_reserva_url(situacao_reserva, format: :json)
