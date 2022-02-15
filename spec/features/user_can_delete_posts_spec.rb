require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    user_sign_up_and_log_in
    
    fill_in "post_message", with: "Hello, world!"
    click_button 'Submit'

    visit "/posts/#{Post.all.last.id}"
    click_link 'Delete'

    expect(page).to_not have_content("Hello, world!")
    
  end
end


