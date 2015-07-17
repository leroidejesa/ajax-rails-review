require 'rails_helper'

describe 'adding an comment path' do
  it 'will add an comment to a blog post and display on same page', js: true do
    user = FactoryGirl.create :user
    post = Post.create(title: "The Elusive 'Perfect' Cheeseburger", content: "Dinah my dear! I wish you were down here with me! There are no  mice in the air, I'm afraid, but you might catch a bat, and that's very  like a mouse, you know. But do cats eat bats, I wonder?' And here Alice  began to get rather sleepy, and went on saying to herself, in a dreamy  sort of way, 'Do cats eat bats? Do cats eat bats?' and sometimes, 'Do  bats eat cats?' for, you see, as she couldn't answer either question,  it didn't much matter which way she put it. She felt that she was dozing  off, and had just begun to dream that she was walking hand in hand with  Dinah, and saying to her very earnestly, 'Now, Dinah, tell me the truth:  did you ever eat a bat?'")
    visit '/'
    click_on 'Login'
    fill_in 'Username', with: user.username
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    visit '/'
    click_on '0 Comments'
    click_on 'Add a comment...'
    fill_in 'Text', with: 'lol'
    click_on 'Create Comment'
    expect(page).to have_content 'lol'
  end
end
