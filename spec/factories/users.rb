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
    phone "5555555555"
    ssn 2345
    company "Stark Industries"
  end

  factory :employee, class: "Employee" do
    first_name "Employee"
    last_name "Test"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
    phone "5555555555"
    ssn 2345
    company "Stark Industries"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
    phone "5555555555"
    ssn 2345
    company "Stark Industries"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non"
    last_name "Auth"
    email {generate :email}
    password "asdfasdf"
    password_confirmation "asdfasdf"
    phone "5555555555"
    ssn 2345
    company "Stark Industries"
  end
end
