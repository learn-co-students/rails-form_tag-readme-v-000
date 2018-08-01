require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit "/posts/new"
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit "/posts/new"
    expect(page).to have_content('Post Form')
  end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
   visit "/posts/new"
   fill_in 'post_title', with: 'My post title'
   fill_in 'post_description', with: 'My post description'

   click_on 'Submit Post'

   expect(page.current_path).to eq("/posts")
   expect(page).to have_content('My post title')
   expect(page).to have_content('My post description')
 end
end
