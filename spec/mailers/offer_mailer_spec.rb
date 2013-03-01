require "spec_helper"

describe OfferMailer do
  describe "confirmation" do
    let(:mail) { OfferMailer.confirmation }

    it "renders the headers" do
      mail.subject.should eq("Confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "inquiry" do
    let(:mail) { OfferMailer.inquiry }

    it "renders the headers" do
      mail.subject.should eq("Inquiry")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
