require 'rails_helper'

describe 'new post' do
  it 'ensures that the route form works with the /new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit new_post_path
    expect(page).to have_content('Post Form')
  end

  it "displays a new post form that redirects to the index page, which then contains the submitted post's title and description" do
    visit new_post_path
    fill_in 'post_title', with: 'Why all this?'
    fill_in 'post_description', with: 'We didn\'t start the fire'
    click_on 'Submit Post'

    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('Why all this?')
    expect(page).to have_content('We didn\'t start the fire')
  end
end
