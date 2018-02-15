@seeduser = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
AdminUser.create(email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Will", last_name: "Turner")
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser.id)
end

puts "100 posts have been created"
