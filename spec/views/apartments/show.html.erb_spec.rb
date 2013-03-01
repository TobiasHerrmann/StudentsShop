require 'spec_helper'

describe "apartments/show" do
  before(:each) do
    @apartment = assign(:apartment, stub_model(Apartment,
      :title => "Title",
      :adress => "Adress",
      :area => 1,
      :description => "MyText",
      :category => "Category",
      :owner => "Owner",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Adress/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Category/)
    rendered.should match(/Owner/)
    rendered.should match(/9.99/)
  end
end
