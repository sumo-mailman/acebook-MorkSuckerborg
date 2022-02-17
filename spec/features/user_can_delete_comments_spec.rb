require 'rails_helper'

RSpec.feature "User can delete a comment", type: :feature do
  scenario "Comment is no longer visible" do
    sign_up_log_in
    submit_post

    click_link "0 Comments"
    submit_comment

    find('.comment').click_link "Delete"

    expect(page.has_css?('.comment')).to be false 
    expect(page).to have_content("Comment was successfully destroyed")
  end
end
