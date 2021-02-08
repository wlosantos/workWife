require 'rails_helper'

RSpec.describe "registers/index", type: :view do
  before(:each) do
    assign(:registers, [
      Register.create!(
        name: "Name",
        cpf: "Cpf",
        rg: "Rg",
        type_plan: 2,
        status: 3
      ),
      Register.create!(
        name: "Name",
        cpf: "Cpf",
        rg: "Rg",
        type_plan: 2,
        status: 3
      )
    ])
  end

  it "renders a list of registers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Cpf".to_s, count: 2
    assert_select "tr>td", text: "Rg".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
