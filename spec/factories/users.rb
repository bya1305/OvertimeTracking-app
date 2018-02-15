FactoryBot.define do
  sequence :email do |f|
    "test#{f}@example.com"
  end

  factory :user do
    first_name "Jon"
    last_name "Snow"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin, class: "User" do
    first_name "Admin"
    last_name "User"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end