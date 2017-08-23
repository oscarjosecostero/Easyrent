# This will guess the User class
FactoryGirl.define do
  factory :user do
    email 'abcd@1234.com'
    password 'acbd1234'
    username 'johndoe'
    first_name 'John'
    last_name 'Doe'
  end
end
