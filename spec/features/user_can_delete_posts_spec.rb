require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    sign_up_log_in
    
    fill_in "post_message", with: "Hello, world!"
    click_button 'Submit'

    post_links = page.all('.post-link')
    post_links.first.click

    click_link 'Delete'

    expect(page.has_css?('.post')).to be false 
    expect(page).to have_content("Post successfully deleted")
  end
end
