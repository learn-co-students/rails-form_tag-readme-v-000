require 'rails_helper'

describe 'new post' do
  it "ensures that the form route works with the /new action" do
    visit new_post_path #create a route called new in routes file, create a #method called new in Controller, create a view page called new
    expect(page.status_code).to eq(200)#page status should be 200
  end

  it 'renders HTML in the /new template' do # post/new
    visit new_post_path #go to the post page
    expect(page).to have_content('Post Form')#display text post form
  end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
  visit new_post_path
  fill_in 'post_title', with: 'My post title' #input field post_title
  fill_in 'post_description', with: 'My post description'#input field #post_description

  click_on 'Submit Post'

  expect(page.current_path).to eq(posts_path)#goes in form action field
  expect(page).to have_content('My post title')
   expect(page).to have_content('My post description')
  end

end
