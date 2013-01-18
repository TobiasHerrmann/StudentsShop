require 'spec_helper'

describe "contact_messages/new" do
  before(:each) do
    assign(:contact_message, stub_model(ContactMessage,
      :name => "MyString",
      :email => "MyString",
      :betreff => "MyString",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new contact_message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contact_messages_path, :method => "post" do
      assert_select "input#contact_message_name", :name => "contact_message[name]"
      assert_select "input#contact_message_email", :name => "contact_message[email]"
      assert_select "input#contact_message_betreff", :name => "contact_message[betreff]"
      assert_select "textarea#contact_message_message", :name => "contact_message[message]"
    end
  end
end
