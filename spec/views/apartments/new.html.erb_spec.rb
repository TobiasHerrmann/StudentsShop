require 'spec_helper'

describe "apartments/new" do
  before(:each) do
    assign(:apartment, stub_model(Apartment,
      :title => "MyString",
      :adress => "MyString",
      :area => 1,
      :description => "MyText",
      :category => "MyString",
      :owner => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new apartment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", apartments_path, "post" do
      assert_select "input#apartment_title[name=?]", "apartment[title]"
      assert_select "input#apartment_adress[name=?]", "apartment[adress]"
      assert_select "input#apartment_area[name=?]", "apartment[area]"
      assert_select "textarea#apartment_description[name=?]", "apartment[description]"
      assert_select "input#apartment_category[name=?]", "apartment[category]"
      assert_select "input#apartment_owner[name=?]", "apartment[owner]"
      assert_select "input#apartment_price[name=?]", "apartment[price]"
    end
  end
end
