require 'rails_helper'

describe 'new post' do
  it 'ensures forms route works with /new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'displays a new post form that redirects to an updated index page including new post' do
    visit new_post_path
    fill_in 'post_title', with: "My post title"
    fill_in 'post_description', with: "My post description"
    click_on 'Submit Post'
    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('My post title')
    expect(page).to have_content('My post description')
  end
end

