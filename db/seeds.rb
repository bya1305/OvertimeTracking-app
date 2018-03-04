@seeduser = Employee.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow",phone: "5597798230", ssn: 1234, company: "Stark Industries")
@seeduser2 = Employee.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Tyrion", last_name: "Lannister",phone: "5597798230", ssn: 1234, company: "Stark Industries")
@seeduser3 = Employee.create(email: "test3@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Daenarys", last_name: "Targaryen",phone: "5597798230", ssn: 1234, company: "Stark Industries")

puts "3 Users have been created"

AdminUser.create(email: "josh.avina78@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Will", last_name: "Turner", phone: "5597798230", ssn: 2468, company: "Overrule")

puts "1 Admin user has been created"

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

25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser.id, daily_hours: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser2.id, daily_hours: 2.5)
end
25.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @seeduser3.id, daily_hours: 2.5)
end

puts "75 Posts have been created"
