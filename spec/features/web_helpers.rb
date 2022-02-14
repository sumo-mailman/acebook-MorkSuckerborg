def sign_up
  visit "/sign_up"
  fill_in "Name", with: "Bob Bam"
  fill_in "Email", with: "bob@example.com"
  fill_in "Password", with: "Banana123"
  click_button "Sign Up"
end

def submit_post
  fill_in "Message", with: "Hello, world!"
  click_button "Submit"
end