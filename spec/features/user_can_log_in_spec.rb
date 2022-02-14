require 'rails_helper'

feature 'Log in' do
  scenario 'user logs in' do
    # we need to have a registered user

    user_sign_up_not_logged_in
    
    visit '/'
    
    fill_in "Email", with: 'Josh@gmail.com'
    fill_in "Password", with: 'password'
    click_button 'Log in'

    expect(current_path).to eq '/'
    expect(page).to have_content 'Signed in successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log in'
    expect(page).to have_button 'Log Out'
  end
end
