require 'spec_helper'

describe "OfferMessages" do
  describe "GET /offer_messages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get offer_messages_path
      response.status.should be(200)
    end
  end
end
