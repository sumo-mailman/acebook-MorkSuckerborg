def sign_up_log_in
  visit "/users/sign_up"
  fill_in "Name", with: "Bob Bam"
  fill_in "Email", with: "bob@example.com"
  fill_in "Password", with: "Banana123"
  fill_in 'Password confirmation', with: "Banana123"
  click_button 'Sign up'
end

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
  log_out_link = page.find('#log-out-link')
  log_out_link.click
end

def submit_post(image: false)
  fill_in "post[message]", with: "Hello, world!"
  attach_file('post-image-form', './spec/fixtures/test-image.jpeg') if image
  click_button "Submit"
end

def submit_comment
  fill_in "comment[content]", with: "Actually, I think you'll find..."
  click_button "Create Comment"
end
