require "spec_helper"

describe OfferMessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/offer_messages").should route_to("offer_messages#index")
    end

    it "routes to #new" do
      get("/offer_messages/new").should route_to("offer_messages#new")
    end

    it "routes to #show" do
      get("/offer_messages/1").should route_to("offer_messages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/offer_messages/1/edit").should route_to("offer_messages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/offer_messages").should route_to("offer_messages#create")
    end

    it "routes to #update" do
      put("/offer_messages/1").should route_to("offer_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/offer_messages/1").should route_to("offer_messages#destroy", :id => "1")
    end

  end
end
