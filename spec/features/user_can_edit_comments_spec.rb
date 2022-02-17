require 'rails_helper'

RSpec.feature "User can delete a comment", type: :feature do
  scenario "Comment is no longer visible" do
    sign_up_log_in
    submit_post

    visit "/posts/#{Post.all.last.id}"
    submit_comment

    find('.comment').click_link "Edit"

    fill_in "comment[content]", with: "Editted Comment"
    click_button "Add comment"

    expect(page.has_css?('.comment')).to be true 
    expect(page).to have_content("Comment was successfully updated")
    expect(page).to_not have_content("Actually, I think you'll find...")
    expect(page).to have_content("Editted Comment")
  end
end
