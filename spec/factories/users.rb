# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'ahmed@gmail.com'
    password 'x1234567'
    password_confirmation 'x1234567'
    full_name 'Ahmed Nadar'
  end
end
