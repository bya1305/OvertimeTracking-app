@seeduser = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
@seeduser2 = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Tyrion", last_name: "Lannister")
@seeduser3 = User.create(email: "test3@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Daenarys", last_name: "Targaryen")

AdminUser.create(email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Will", last_name: "Turner")

25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser.id, overtime_request: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser2.id, overtime_request: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser3.id, overtime_request: 2.5)
end

puts "3 Users have been created"
puts "1 Admin user has been created"
puts "75 Posts have been created"
