@seeduser = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow",phone: "5597798230")
@seeduser2 = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Tyrion", last_name: "Lannister",phone: "5597798230")
@seeduser3 = User.create(email: "test3@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Daenarys", last_name: "Targaryen",phone: "5597798230")

puts "3 Users have been created"

AdminUser.create(email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Will", last_name: "Turner", phone: "5597798230")

puts "1 Admin user has been created"

25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser.id, overtime_request: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser2.id, overtime_request: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser3.id, overtime_request: 2.5)
end

puts "75 Posts have been created"

AuditLog.create!(user_id: @seeduser.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @seeduser.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @seeduser.id, status: 0, start_date: (Date.today - 20.days))

AuditLog.create!(user_id: @seeduser2.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @seeduser2.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @seeduser2.id, status: 0, start_date: (Date.today - 20.days))

AuditLog.create!(user_id: @seeduser3.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @seeduser3.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @seeduser3.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit Logs have been created for each user"
