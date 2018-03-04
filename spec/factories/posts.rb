FactoryBot.define do
  factory :post do
    date Date.today
    work_performed "This is a factory work_performed"
    daily_hours 12.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Armageddon"
    daily_hours 9.0
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    work_performed "Unable to access this"
    non_authorized_user
  end
end
