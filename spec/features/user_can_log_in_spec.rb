require 'rails_helper'

feature 'Log in' do
  scenario 'user logs in' do
    visit '/'
    p current_path
    # we need to have a registered user

    click_button "Sign up"
    expect(page).to have_content 'Registrations#new'
    # user takes name, email, password
    fill_in "Name", with: "Mat"
    fill_in "Email", with: "matt@matt.com"
    fill_in "Password", with: "Abc123"
    find('input[name="commit"]').click

    click_button 'Log out'
    
    # User.create(name: 'Mat', email: 'matt@g.com', password: '12345')
    click_button 'Log in'
    p 'After click log in:', current_path
    fill_in "email", with: 'matt@g.com'
    fill_in "password", with: '12345'
    click_button 'Log in'
    p 'AFTER AFTER click log in:', current_path
    expect(current_path).to eq '/'
    expect(page).to have_content 'Logged in successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log in'
    expect(page).to have_button 'Log out'
  end
end