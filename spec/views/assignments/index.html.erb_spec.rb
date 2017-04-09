require 'rails_helper'

RSpec.describe "assignments/index", type: :view do
  before(:each) do
    assign(:assignments, [
      Assignment.create!(
        :store_id => 2,
        :employee_id => 3,
        :pay_level => 4
      ),
      Assignment.create!(
        :store_id => 2,
        :employee_id => 3,
        :pay_level => 4
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
