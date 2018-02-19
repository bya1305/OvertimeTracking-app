require 'rails_helper'

RSpec.describe AuditLog, type: :model do
  before do
    @audit_log = FactoryBot.create(:audit_log)
  end

  describe 'creation' do
    it 'can be properly created' do
      expect(@audit_log).to be_valid
    end
  end

  describe 'validations' do
    it 'should be required to have a user association' do
      @audit_log.user_id = nil
      expect(@audit_log).to_not be_valid
    end

    xit 'should always have a status' do

    end

    xit 'should be required to have a start_date' do

    end

    xit 'should have a start date equal to six days earlier' do

    end
  end
end
