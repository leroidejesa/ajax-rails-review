require 'rails_helper'

describe "the add a project process" do
  it "adds a new project under a skill" do
    visit skills_path
    click_on 'add'
    fill_in 'Name', :with => 'test skill'
    fill_in 'Svg url', :with => 'www.test.com/test.svg'
    fill_in 'Description', :with => 'test description'
    click_on 'Create Skill'
    click_on 'test skill'
    fill_in 'Name', :with => 'ping pong test'
    fill_in 'Description', :with => 'seemed so hard back then!'
    fill_in 'Link', :with => 'github.com/link.git'
    click_on 'Create Project'
    expect(page).to have_content 'ping pong test'
  end
end
