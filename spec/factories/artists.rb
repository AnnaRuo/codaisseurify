FactoryGirl.define do
  factory :artist do
    name         "Jukka Poika"
    country      "Finland"
    age          35

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
