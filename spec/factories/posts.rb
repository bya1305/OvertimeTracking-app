FactoryBot.define do
  factory :post do
    date Date.today
    rationale "This is a factory Rationale"
    daily_hours 12.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "This is a second factory rationale"
    daily_hours 9.0
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Unable to access this"
    non_authorized_user
  end
end
