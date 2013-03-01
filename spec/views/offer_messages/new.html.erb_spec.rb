require 'spec_helper'

describe "offer_messages/new" do
  before(:each) do
    assign(:offer_message, stub_model(OfferMessage,
      :name => "MyString",
      :email => "MyString",
      :betreff => "MyString",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new offer_message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offer_messages_path, "post" do
      assert_select "input#offer_message_name[name=?]", "offer_message[name]"
      assert_select "input#offer_message_email[name=?]", "offer_message[email]"
      assert_select "input#offer_message_betreff[name=?]", "offer_message[betreff]"
      assert_select "textarea#offer_message_message[name=?]", "offer_message[message]"
    end
  end
end
