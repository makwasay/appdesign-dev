require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        :name => "Name",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone",
        :latitude => 2.5,
        :longitude => 3.5,
        :active => false
      ),
      Store.create!(
        :name => "Name",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone",
        :latitude => 2.5,
        :longitude => 3.5,
        :active => false
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
