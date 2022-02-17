def sign_up_log_in
  visit "/users/sign_up"
  fill_in "user[name]", with: "Bob Bam"
  fill_in "user[email]", with: "bob@example.com"
  fill_in "user[password]", with: "Banana123"
  fill_in 'user[password_confirmation]', with: "Banana123"
  click_button 'Sign up'
end

def sign_up_log_in2
  visit "/users/sign_up"
  fill_in "user[name]", with: "Babs Boom"
  fill_in "user[email]", with: "babs@example.com"
  fill_in "user[password]", with: "Orange456"
  fill_in 'user[password_confirmation]', with: "Orange456"
  click_button 'Sign up'
end

def log_out
  visit '/'
  log_out_link = page.find('.log-out-link')
  log_out_link.click
end

def submit_post(image: false)
  fill_in "post[message]", with: "Hello, world!"
  attach_file('post[image]', './spec/fixtures/test-image.jpeg') if image
  click_button "Submit"
end

def submit_comment
  fill_in "comment[content]", with: "Actually, I think you'll find..."
  click_button "Add comment"
end
