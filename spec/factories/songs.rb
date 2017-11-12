FactoryGirl.define do
  factory :song do
    title       "Silkkii"
    album       "Kokoelma"

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
