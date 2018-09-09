FactoryBot.define do
  factory :user do |u|
    u.email { "testing@testing.com" }
    u.password { "password" }
  end
end
