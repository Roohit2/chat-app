FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
    end
  end
end