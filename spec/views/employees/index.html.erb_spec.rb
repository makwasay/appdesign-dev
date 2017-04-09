require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :ssn => "Ssn",
        :phone => "Phone",
        :role => "Role",
        :active => false
      ),
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :ssn => "Ssn",
        :phone => "Phone",
        :role => "Role",
        :active => false
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ssn".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
