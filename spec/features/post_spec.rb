require 'rails_helper'

describe 'new post' do
   it 'renders HTML in the /new template' do
     visit new_post_path
     expect(page).to have_content('Post Form')
   end

end
