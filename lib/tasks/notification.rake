namespace :notification do
  desc "Sends Sms notification to employees asking them to log overtime"
  task sms: :environment do
    #Schedule to run on Sunday at 5pm
    #Iterate over all employees
    #Skip admin users
    #Send a message that has instructions and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    
  end

end
