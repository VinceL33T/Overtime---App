require 'rails_helper'

describe 'admin dashboard' do
it 'cannot be reached by a non admin users' do
  user = FactoryBot.create(:user)
  login_as(user, :scope => :user)

  visit admin_root_path

  expect(current_path).to eq(root_path)
end

it 'can be reached by an admin users' do
  admin_user = FactoryBot.create(:admin_user)
  login_as(admin_user, :scope => :user)

  visit admin_root_path

  expect(current_path).to eq(admin_root_path)
end