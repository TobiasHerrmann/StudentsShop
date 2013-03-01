require 'spec_helper'

describe "offer_messages/index" do
  before(:each) do
    assign(:offer_messages, [
      stub_model(OfferMessage,
        :name => "Name",
        :email => "Email",
        :betreff => "Betreff",
        :message => "MyText"
      ),
      stub_model(OfferMessage,
        :name => "Name",
        :email => "Email",
        :betreff => "Betreff",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of offer_messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Betreff".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
