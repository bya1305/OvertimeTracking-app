require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      # user = User.create(email: 'testpost@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'test', last_name: 'test')
      @post = FactoryBot.create(:post)
    end

    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.date = nil
      expect(@post).to_not be_valid
    end
  end
end
