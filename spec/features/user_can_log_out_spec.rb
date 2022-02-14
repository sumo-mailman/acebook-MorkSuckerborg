require 'rails_helper'

feature 'Log out' do
  scenario 'user logs out' do
    # we need to have a registered user
    user_sign_up_not_logged_in
    
    visit '/'
    
    fill_in "Email", with: 'Josh@gmail.com'
    fill_in "Password", with: 'password'
    click_button 'Log in'

    click_button "Log Out"

    expect(page).to have_content "Signed out successfully"
    expect(page).to have_button "Sign up"
    expect(page).to have_button "Log in"
    expect(page).not_to have_button "Log Out"
  end
end 
