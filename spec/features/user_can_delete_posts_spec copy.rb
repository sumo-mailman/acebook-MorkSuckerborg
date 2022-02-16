require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    sign_up_log_in
    
    fill_in "post_message", with: "Hello, world!"
    click_button 'Submit'

    visit "/posts/#{Post.all.last.id}"
    click_link 'Delete'

    expect(page).to_not have_content("Hello, world!")
    expect(page).to_not have_content("Bob Bam")
    expect(page).to have_content("Post successfully deleted")
  end
end
