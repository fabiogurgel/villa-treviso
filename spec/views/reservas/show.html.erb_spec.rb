require 'rails_helper'

RSpec.describe "reservas/show", type: :view do
  before(:each) do
    @reserva = assign(:reserva, Reserva.create!(
      :codigo => "",
      :area_comum_id => nil,
      :usuario_reserva_id => "",
      :usuario_liberador_id => 2,
      :situacao_reserva_id => nil,
      :observacao => "MyText",
      :periodo_reserva_id => nil,
      :obervacao_liberador => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
