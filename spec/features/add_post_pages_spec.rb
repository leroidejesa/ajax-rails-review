require 'rails_helper'

describe "the add a post process" do
  it "adds a new post to blog" do
    user = FactoryGirl.create :user
    visit 'users/sign_in'
    fill_in 'Password', with: user.password
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    click_on 'Log in'
    visit posts_path
    click_on 'New Post'
    fill_in 'Title', :with => 'test title'
    fill_in 'Content', :with => 'test content'
    click_on 'Create Post'
    expect(page).to have_content 'test title'
  end
end
