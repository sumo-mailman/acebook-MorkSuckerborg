require 'rails_helper'

RSpec.feature "Users can comment on a post", type: :feature do
  scenario "User sees the comment content" do
    sign_up_log_in
    submit_post
    click_link "0 Comments"
    submit_comment
    expect(page).to have_content("Actually, I think you'll find...")
  end

  scenario "User sees the date and time of the comment" do
    sign_up_log_in
    submit_post
    click_link "0 Comments"
    submit_comment
    expect(page).to have_content("31 Dec 1999 at 23:59", count: 2)
  end

  scenario "User sees the comment creator" do
    sign_up_log_in
    submit_post
    click_link "0 Comments"
    submit_comment
    expect(page).to have_content("Bob Bam", count: 2)
  end
end
