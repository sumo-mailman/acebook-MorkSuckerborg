require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "User sees the post content" do
    user_sign_up_and_log_in
    submit_post
    expect(page).to have_content("Hello, world!")
  end

  scenario "User sees the date and time of the post" do
    user_sign_up_and_log_in
    submit_post
    expect(page).to have_content("31 Dec 1999 at 23:59")
  end

  scenario "User sees the post creator" do
    user_sign_up_and_log_in
    submit_post
    expect(page).to have_content("Bob Bam")
  end
end


