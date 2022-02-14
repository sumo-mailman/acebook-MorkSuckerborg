require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "User sees the post content" do
    sign_up
    submit_post

    posts = page.all('.post')
    first_post_image = page.find('#post_image-0')['src']
    
    expect(posts.length).to eq 1
    expect(post.first).to have_content("Hello, world!")
    expect(first_post_image).to match /.*\/test-image.jpeg/
  end

  scenario "User sees the date and time of the post" do
    sign_up
    submit_post
    expect(page).to have_content("31 Dec 1999 at 23:59")
  end

  scenario "User sees the post creator" do
    sign_up
    submit_post
    expect(page).to have_content("Bob Bam")
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
  # add an image
  attach_file('post-image', './spec/fixtures/test-image.jpeg')
  fill_in "Message", with: "Hello, world!"
  click_button "Submit"
end
