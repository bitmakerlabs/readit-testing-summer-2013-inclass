FactoryGirl.define do
  factory :post do
    name Faker::Company.bs
    content Faker::Lorem.characters(51)
    user
  end
end
