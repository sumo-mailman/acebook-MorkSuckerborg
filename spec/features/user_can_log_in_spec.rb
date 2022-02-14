require 'rails_helper'

feature 'Log in' do
  scenario 'user logs in' do
    # we need to have a registered user
    User.create(name: "Matt", email: "matt@matt.com", password: "Abc123")
    visit '/'
    
    click_button 'Log in'
    fill_in "email", with: 'matt@matt.com'
    fill_in "password", with: 'Abc123'
    find("input[type=submit][value='Login']").click

    expect(current_path).to eq '/'
    expect(page).to have_content 'Logged in successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log in'
    expect(page).to have_button 'Log out'
  end
end
