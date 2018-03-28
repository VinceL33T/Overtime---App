require 'rails_helper'

describe 'AuditLog Feature' do
  let(:audit_log) { FactoryBot.create(:audit_log) }

 describe 'index' do
  before do
    admin_user = FactoryBot.create(:admin_user)
    login_as(admin_user, :scope => :user)
  end

   it 'renders audit log content' do
  FactoryBot.create(:audit_log)
  visit audit_logs_path
  expect(page).to have_content(/SNOW/)
end
  end
end