require 'rails_helper'

RSpec.describe "registers/edit", type: :view do
  before(:each) do
    @register = assign(:register, Register.create!(
      name: "MyString",
      cpf: "MyString",
      rg: "MyString",
      type_plan: 1,
      status: 1
    ))
  end

  it "renders the edit register form" do
    render

    assert_select "form[action=?][method=?]", register_path(@register), "post" do

      assert_select "input[name=?]", "register[name]"

      assert_select "input[name=?]", "register[cpf]"

      assert_select "input[name=?]", "register[rg]"

      assert_select "input[name=?]", "register[type_plan]"

      assert_select "input[name=?]", "register[status]"
    end
  end
end
