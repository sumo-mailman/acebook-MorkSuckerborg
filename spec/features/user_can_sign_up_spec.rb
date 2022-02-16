require 'rails_helper'

feature 'Sign up' do
  scenario 'user signs up' do
    visit "/users/sign_up"
    
    fill_in "Name", with: "Josh"
    fill_in "Email", with: "Josh@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
    expect(page.find('#main-navbar')).to have_link 'Log out'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log in'
  end

  scenario "user can't sign up with an existing email" do # still not implemented
    User.create(name: 'Josh', email: 'Josh@gmail.com', password: 'password')

    visit "/"
    sign_up_link = page.find('#sign-up-link')
    sign_up_link.click

    fill_in "Name", with: "Josh"
    fill_in "Email", with: "Josh@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button 'Sign up'

    expect(page).to have_content "Email has already been taken"
    expect(User.all.length).to eq 1
  end

  scenario 'password must be between 6 and 10 characters' do
    visit "/users/sign_up"

    fill_in "Name", with: "Josh"
    fill_in "Email", with: "matt@matt.com"
    fill_in "Password", with: "1234"
    find('input[name="commit"]').click

    expect(page).to have_content "Password is too short (minimum is 6 characters)"
  end
end
