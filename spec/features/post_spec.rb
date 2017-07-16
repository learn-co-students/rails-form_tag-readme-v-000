require 'rails_helper'

describe 'new post' do
  it 'routes to /new action' do
    visit new_post_path
    expect(page.status_code).to be(200)
  end

  it 'creates a new post and redirects to the /posts route that contains the new post' do
    visit new_post_path
    expect(page).to have_content('Post Form')
    fill_in 'post_title', with: 'My post title'
    fill_in 'post_description', with: 'My Post description'
    click_on 'Submit Post'
    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('My post title')
    expect(page).to have_content('My Post description')
  end
end
