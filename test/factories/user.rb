FactoryBot.define do
  factory :user do
    name { "Darth Vader" }
    sequence(:email) { |n| "vader#{n}@empire.org" }
    password { "password" }
    password_confirmation { "password" }
  end
end
