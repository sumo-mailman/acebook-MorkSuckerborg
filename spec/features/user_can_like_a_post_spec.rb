require 'rails_helper'

RSpec.feature "Different users can like a post", type: :feature do
  scenario "User likes a post" do
    sign_up_log_in
    submit_post
    click_button "0 Likes"
    expect(page).to have_button("1 Like")
  end

  scenario "Second user's like increases like count" do
    sign_up_log_in
    submit_post
    click_button "0 Likes"
    log_out
    sign_up_log_in_2
    click_button "1 Like"
    expect(page).to have_button("2 Likes")
  end
end
