require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
      :name => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :active => false
    ))
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(@store), "post" do

      assert_select "input#store_name[name=?]", "store[name]"

      assert_select "input#store_street[name=?]", "store[street]"

      assert_select "input#store_city[name=?]", "store[city]"

      assert_select "input#store_state[name=?]", "store[state]"

      assert_select "input#store_zip[name=?]", "store[zip]"

      assert_select "input#store_phone[name=?]", "store[phone]"

      assert_select "input#store_latitude[name=?]", "store[latitude]"

      assert_select "input#store_longitude[name=?]", "store[longitude]"

      assert_select "input#store_active[name=?]", "store[active]"
    end
  end
end
