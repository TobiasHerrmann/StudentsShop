require 'spec_helper'

describe "contact_messages/show" do
  before(:each) do
    @contact_message = assign(:contact_message, stub_model(ContactMessage,
      :name => "Name",
      :email => "Email",
      :betreff => "Betreff",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Betreff/)
    rendered.should match(/MyText/)
  end
end
