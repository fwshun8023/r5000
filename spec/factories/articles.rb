FactoryGirl.define do
  factory :article do
    title "MyString"
    content "MyText"
    association :user
  end
end
