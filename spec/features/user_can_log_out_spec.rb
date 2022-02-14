require 'rails_helper'

feature 'Log out' do
  scenario 'user logs out' do
    # we need to have a registered user
    User.create(name: "Matt", email: "matt@matt.com", password: "Abc123")
    visit '/'
    click_button 'Log in'

    fill_in "Email", with: "matt@matt.com"
    fill_in "Password", with: "Abc123"
    find('input[name="commit"]').click
    click_button "Log out"

    expect(page).to have_content "Logged out successfully"
    expect(page).to have_button "Sign up"
    expect(page).to have_button "Log in"
    expect(page).not_to have_button "Log out"
  end
end 
