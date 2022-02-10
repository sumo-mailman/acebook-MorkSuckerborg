require 'rails_helper'

feature 'Sign up' do
  scenario 'user signs up' do
    visit "/"
    
    
    click_button "Sign up"
    # user takes name, email, password
    fill_in "name", with: "Mat"
    fill_in "email", with: "matt@matt.com"
    fill_in "password", with: "Abc123"
    click_button "Sign up"
    expect(page).to have_content 'User created successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log out'
  end
end