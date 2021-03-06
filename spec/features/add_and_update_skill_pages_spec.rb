require 'rails_helper'

describe "the add and update a skill process" do
  it "adds a new skill" do
    user = FactoryGirl.create :user
    visit 'users/sign_in'
    fill_in 'Password', with: user.password
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    click_on 'Log in'
    visit skills_path
    click_on 'Add'
    fill_in 'Name', :with => 'test skill'
    fill_in 'Svg url', :with => 'www.test.com/test.svg'
    fill_in 'Description', :with => 'test description'
    click_on 'Create Skill'
    click_on 'test skill'
    click_on 'Edit'
    fill_in 'Name', :with => 'ruby'
    click_on 'Update Skill'
    expect(page).to have_content 'ruby'
  end

  it "gives error when no name is entered" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'errors'
  end
end
