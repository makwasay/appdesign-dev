require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :ssn => "Ssn",
      :phone => "Phone",
      :role => "Role",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Ssn/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/false/)
  end
end
