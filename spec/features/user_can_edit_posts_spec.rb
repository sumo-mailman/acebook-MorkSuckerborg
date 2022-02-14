require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can edit posts" do
    sign_up
    submit_post
    click_link 
    click_link "Edit"
    fill_in "Message", with: "Edited message here!"
    click_button "Submit"
    expect(page).to_not have_content("Hello, world!")
    expect(page).to have_content("Edited message here!")
  end
end

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
