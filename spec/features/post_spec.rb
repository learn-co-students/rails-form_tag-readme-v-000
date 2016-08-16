require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'has the form render with the new action' do
    visit new_post_path
    expect(page).to have_content('Post Form')
  end

  it "shows a new form that submits content and redirects to the index page, which now contains the submitted post's title and description" do
    visit new_post_path
    fill_in 'post_title', with: 'My post title'
    fill_in 'post_description', with: 'My post description'

    click_on 'Submit Post'

    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('My post title')
    expect(page).to have_content('My post description')
  end
end

# overhaul of spec tests / general lesson flow
# add RSpec expectation for post description
