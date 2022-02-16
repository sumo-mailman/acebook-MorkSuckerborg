def sign_up_log_in
  visit "/users/sign_up"
  fill_in "Name", with: "Bob Bam"
  fill_in "Email", with: "bob@example.com"
  fill_in "Password", with: "Banana123"
  fill_in 'Password confirmation', with: "Banana123"
  click_button 'Sign up'
end

def log_out
  visit '/'
  log_out_link = page.find('.log-out-link')
  log_out_link.click
end

def submit_post(image: false)
  fill_in "Message", with: "Hello, world!"
  attach_file('post-image', './spec/fixtures/test-image.jpeg') if image
  click_button "Submit"
end
