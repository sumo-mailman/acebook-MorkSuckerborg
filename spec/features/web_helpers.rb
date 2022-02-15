def user_sign_up_and_log_in
  visit '/'
  click_link 'Sign up'

  fill_in "Name", with: "Josh"
  fill_in "Email", with: "Josh@gmail.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button 'Sign up'
end 

def user_sign_up_not_logged_in
  visit '/'
  click_link 'Sign up'

  fill_in "Name", with: "Josh"
  fill_in "Email", with: "Josh@gmail.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button 'Sign up'
  click_button 'Log Out'
end 

def submit_post
  fill_in "Message", with: "Hello, world!"
  click_button "Submit"
end