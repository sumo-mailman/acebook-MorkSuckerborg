require 'rails_helper'

feature 'Sign up' do
  scenario 'user signs up' do
    visit "/"
    
    
    click_button "Sign up"
    expect(page).to have_content 'Registrations#new'
    # user takes name, email, password
    fill_in "Name", with: "Mat"
    fill_in "Email", with: "matt@matt.com"
    fill_in "Password", with: "Abc123"
    find('input[name="commit"]').click
    expect(page).to have_content 'User created successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log out'
  end
end