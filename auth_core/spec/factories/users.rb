FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@email.com" }
    password { "default_password" }
    password_confirmation { "default_password" }
  end
end
