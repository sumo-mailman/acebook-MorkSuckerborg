require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    sign_up_log_in
    
    fill_in "post_message", with: "Hello, world!"
    click_button 'Submit'

    click_link "0 Comments"

    click_link 'Delete'

    expect(page.has_css?('.post')).to be false 
    expect(page).to have_content("Post successfully deleted")
  end
end
