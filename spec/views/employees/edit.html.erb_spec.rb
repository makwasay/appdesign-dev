require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :ssn => "MyString",
      :phone => "MyString",
      :role => "MyString",
      :active => false
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input#employee_first_name[name=?]", "employee[first_name]"

      assert_select "input#employee_last_name[name=?]", "employee[last_name]"

      assert_select "input#employee_ssn[name=?]", "employee[ssn]"

      assert_select "input#employee_phone[name=?]", "employee[phone]"

      assert_select "input#employee_role[name=?]", "employee[role]"

      assert_select "input#employee_active[name=?]", "employee[active]"
    end
  end
end
