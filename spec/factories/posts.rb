FactoryBot.define do
  factory :post do
    date Date.today
    rationale "This is a factory Rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "This is a second factory rationale"
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "Unable to access this"
    non_authorized_user
  end
end
