require 'rails_helper'

feature 'Log in' do
  scenario 'user logs in' do
    visit '/'
    # we need to have a registered user
    User.create(name: 'Mat', email: 'matt@g.com', password: '12345')
    click_button 'Log in'
    fill_in "email", with: 'matt@g.com'
    fill_in "password", with: '12345'
    click_button 'Log in'
    expect(current_path).to eq '/'
    expect(page).to have_content 'Logged in successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).to have_button 'Log out'
  end
end