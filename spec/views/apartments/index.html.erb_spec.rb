require 'spec_helper'

describe "apartments/index" do
  before(:each) do
    assign(:apartments, [
      stub_model(Apartment,
        :title => "Title",
        :adress => "Adress",
        :area => 1,
        :description => "MyText",
        :category => "Category",
        :owner => "Owner",
        :price => "9.99"
      ),
      stub_model(Apartment,
        :title => "Title",
        :adress => "Adress",
        :area => 1,
        :description => "MyText",
        :category => "Category",
        :owner => "Owner",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
