require 'rails_helper'

RSpec.describe "reservas/index", type: :view do
  before(:each) do
    assign(:reservas, [
      Reserva.create!(
        :codigo => "",
        :area_comum_id => nil,
        :usuario_reserva_id => "",
        :usuario_liberador_id => 2,
        :situacao_reserva_id => nil,
        :observacao => "MyText",
        :periodo_reserva_id => nil,
        :obervacao_liberador => "MyText"
      ),
      Reserva.create!(
        :codigo => "",
        :area_comum_id => nil,
        :usuario_reserva_id => "",
        :usuario_liberador_id => 2,
        :situacao_reserva_id => nil,
        :observacao => "MyText",
        :periodo_reserva_id => nil,
        :obervacao_liberador => "MyText"
      )
    ])
  end

  it "renders a list of reservas" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
