require 'rails_helper'

RSpec.describe "registers/show", type: :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      name: "Name",
      cpf: "Cpf",
      rg: "Rg",
      type_plan: 2,
      status: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
