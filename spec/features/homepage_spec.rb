require 'rails_helper'

describe 'Homepage' do
  it 'allows the admin to approve posts from the homepage' do
    post = FactoryBot.create(:post)
    admin = FactoryBot.create(:admin_user)
    login_as(admin, :scope => :user)
    visit root_path
    click_on("approve_#{post.id}")
    expect(post.reload.status).to eq('approved')
  end

  it 'allows the employee to change the audit log status from the homepage' do
    log = FactoryBot.create(:audit_log)
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    log.update(user_id: user.id)
    visit root_path
    click_on("confirm_#{log.id}")
    expect(log.reload.status).to eq('confirmed')
  end
end
