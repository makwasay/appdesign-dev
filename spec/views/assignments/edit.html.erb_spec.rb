require 'rails_helper'

RSpec.describe "assignments/edit", type: :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :store_id => 1,
      :employee_id => 1,
      :pay_level => 1
    ))
  end

  it "renders the edit assignment form" do
    render

    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do

      assert_select "input#assignment_store_id[name=?]", "assignment[store_id]"

      assert_select "input#assignment_employee_id[name=?]", "assignment[employee_id]"

      assert_select "input#assignment_pay_level[name=?]", "assignment[pay_level]"
    end
  end
end
