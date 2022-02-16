require 'rails_helper'

feature 'Log out' do
  scenario 'user logs out' do
    sign_up_log_in
    click_link "Log out"

    # replace bottom test with specific sign out message from yml
    expect(page).to have_content "You need to sign in or sign up before continuing"
    expect(current_path).to eq '/users/sign_in'
    expect(page).to have_link "Sign up"
    expect(page).to have_button "Log in"
    expect(page).not_to have_button "Log out"
  end
end 
