require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit new_post_path #rails path as opposed to posts/new
    expect(page.status_code).to eq(200) #status of page should equal 200
  end

  it 'renders HTML in the /new template' do
    visit new_post_path
    expect(page).to have_content('Post Form')
  end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
    visit new_post_path
    fill_in 'post_title', with: 'My post title'
    fill_in 'post_description', with: 'My post description'

    click_on 'Submit Post'

    expect(page.current_path).to eq(posts_path) #new path is directed to posts as opposed to new_post
    expect(page).to have_content('My post title') #page will have this and bottom below - code will need to do CRUD action to save and render this
    expect(page).to have_content('My post description')
  end
end
