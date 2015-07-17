require 'rails_helper'

describe 'adding an comment path' do
  it 'will add an comment to a blog post and display on same page', js: true do
    user = FactoryGirl.create :user
    visit '/'
    click_on 'Login'
    fill_in 'Username', with: user.username
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    visit '/'
    click_on 'Show References'
    fill_in 'Name', with: 'dylan'
    fill_in 'Job title', with: 'job'
    fill_in 'Email', with: 'email'
    fill_in 'Phone', with: 'phone'
    click_on 'Create Reference'
    expect(page).to have_content 'dylan'
  end
end
