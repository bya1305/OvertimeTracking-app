namespace :notification do
  desc "Sends Sms notification to employees asking them to log overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      message = "Please log in to the overtime management dashboard to request overtime or confirm your hours for last week: https://project-overtime.herokuapp.com"

      employees.each do |e|
        SmsTool.send_sms(number: e.phone, message: message)
      end
    end
    #Schedule to run on Sunday at 5pm
    #Iterate over all employees
    #Skip admin users
    #Send a message that has instructions and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end

  end

  desc "Sends mail notification to AdminUsers each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
