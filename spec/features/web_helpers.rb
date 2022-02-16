def sign_up_log_in
  visit "/users/sign_up"
  fill_in "Name", with: "Bob Bam"
  fill_in "Email", with: "bob@example.com"
  fill_in "Password", with: "Banana123"
  fill_in 'Password confirmation', with: "Banana123"
  click_button 'Sign up'
end

<<<<<<< HEAD
def sign_up_log_in_2
  visit "/users/sign_up"
  fill_in "Name", with: "Babs Boom"
  fill_in "Email", with: "babs@example.com"
  fill_in "Password", with: "Orange456"
  fill_in 'Password confirmation', with: "Orange456"
  click_button 'Sign up'
end

def log_out
  visit '/'
  click_button 'Log Out'
=======
def log_out
  visit '/'
  log_out_link = page.find('.log-out-link')
  log_out_link.click
>>>>>>> main
end

def submit_post(image: false)
  fill_in "Message", with: "Hello, world!"
  attach_file('post-image', './spec/fixtures/test-image.jpeg') if image
  click_button "Submit"
end
<<<<<<< HEAD

def submit_comment
  fill_in "comment[content]", with: "Actually, I think you'll find..."
  click_button "Create Comment"
end
=======
>>>>>>> main
