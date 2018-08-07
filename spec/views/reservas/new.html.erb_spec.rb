require 'rails_helper'

RSpec.describe "reservas/new", type: :view do
  before(:each) do
    assign(:reserva, Reserva.new(
      :codigo => "",
      :area_comum_id => nil,
      :usuario_reserva_id => "",
      :usuario_liberador_id => 1,
      :situacao_reserva_id => nil,
      :observacao => "MyText",
      :periodo_reserva_id => nil,
      :obervacao_liberador => "MyText"
    ))
  end

  it "renders new reserva form" do
    render

    assert_select "form[action=?][method=?]", reservas_path, "post" do

      assert_select "input#reserva_codigo[name=?]", "reserva[codigo]"

      assert_select "input#reserva_area_comum_id_id[name=?]", "reserva[area_comum_id_id]"

      assert_select "input#reserva_usuario_reserva_id[name=?]", "reserva[usuario_reserva_id]"

      assert_select "input#reserva_usuario_liberador_id[name=?]", "reserva[usuario_liberador_id]"

      assert_select "input#reserva_situacao_reserva_id_id[name=?]", "reserva[situacao_reserva_id_id]"

      assert_select "textarea#reserva_observacao[name=?]", "reserva[observacao]"

      assert_select "input#reserva_periodo_reserva_id_id[name=?]", "reserva[periodo_reserva_id_id]"

      assert_select "textarea#reserva_obervacao_liberador[name=?]", "reserva[obervacao_liberador]"
    end
  end
end
