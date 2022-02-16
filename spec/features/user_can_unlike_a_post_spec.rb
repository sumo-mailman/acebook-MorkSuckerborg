require 'rails_helper'

RSpec.feature "Users like and unlike posts", type: :feature do
  scenario "User unlikes a post" do
    sign_up_log_in
    submit_post
    click_button "0 Likes"
    click_button "1 Like"
    expect(page).to have_button("0 Likes")
  end

  scenario "Second user's unlike decreases like count" do
    sign_up_log_in
    submit_post
    click_button "0 Likes"
    log_out
    sign_up_log_in_2
    click_button "1 Like"
    click_button "2 Likes"
    expect(page).to have_button("1 Like")
  end
end
