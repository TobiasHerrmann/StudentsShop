FactoryGirl.define do
  factory :bookmark do
    title { [FactoryGirl.build(:title)]}
    url "http://www.apple.com"
    description "Apple Inc. ist ein Unternehmen mit Hauptsitz in Cupertino, Kalifornien (Vereinigte Staaten)"
  end
end