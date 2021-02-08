require 'rails_helper'

RSpec.describe "registers/new", type: :view do
  before(:each) do
    assign(:register, Register.new(
      name: "MyString",
      cpf: "MyString",
      rg: "MyString",
      type_plan: 1,
      status: 1
    ))
  end

  it "renders new register form" do
    render

    assert_select "form[action=?][method=?]", registers_path, "post" do

      assert_select "input[name=?]", "register[name]"

      assert_select "input[name=?]", "register[cpf]"

      assert_select "input[name=?]", "register[rg]"

      assert_select "input[name=?]", "register[type_plan]"

      assert_select "input[name=?]", "register[status]"
    end
  end
end
