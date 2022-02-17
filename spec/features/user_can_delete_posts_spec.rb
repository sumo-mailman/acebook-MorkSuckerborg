require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    sign_up_log_in
    submit_post
    
    visit "/posts/#{Post.all.last.id}"

    click_link 'Delete'

    expect(page.has_css?('.post')).to be false 
    expect(page).to have_content("Post successfully deleted")
  end
end
