require 'rails_helper'

feature 'Log in' do
  scenario 'user logs in' do
    User.create(name: 'Mat', email: 'mat@mat.com', password: 'Ukulele')
    
    visit '/'
    
    fill_in "Email", with: 'mat@mat.com'
    fill_in "Password", with: 'Ukulele'
    click_button 'Log in'

    expect(current_path).to eq '/'
    expect(page).to have_content 'Signed in successfully'
    expect(page).not_to have_button 'Sign up'
    expect(page).not_to have_button 'Log in'
    expect(page).to have_button 'Log Out'
  end
end
