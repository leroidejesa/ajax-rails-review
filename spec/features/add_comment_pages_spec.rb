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
#CAPYBARA CAN'T FIND 'NEW', OF ALL THINGS! UGH
    fill_in 'New', with: 'lol'
    click_on 'Create Comment'
    expect(page).to have_content 'lol'
  end
end




#     user = User.create({username: 'MommaMia', password:'whoayes', password_confirmation:'whoayes', email:'Momma@mia.com'})
#     category = Category.create(:name => "Period Facts")
#     question = Question.create(title: 'How many periods?', description:'In my lifetime?', category_id:category.id, user_id: user.id)
#     comment = Answer.new
#     visit '/log-in'
#     fill_in 'username', :with => 'MommaMia'
#     fill_in 'password', :with => 'whoayes'
#     click_on 'Log in'
#     visit '/questions'
#     click_on 'How many periods?'
#     click_on "Answer this Question"
#     fill_in 'answer_description', :with => '200 if you are lucky.'
#     click_on 'Answer!'
#     expect(page).to have_content '200 if you are lucky.'
#   end
# end
