require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "User can edit message" do
    sign_up
    submit_post
    click_link 
    click_link "Edit"
    fill_in "Message", with: "Edited message here!"
    click_button "Submit"
    expect(page).to_not have_content("Hello, world!")
    expect(page).to have_content("Edited message here!")
  end

  scenario "User can update image" do
    sign_up
    submit_post
    click_link 
    click_link "Edit"

    attach_file('post-image', './spec/fixtures/test-image2.png')
    click_button "Submit"

    posts = page.all(".post")
    expect(posts.length).to eq 1
    expect(posts.first).to have_content("Hello, world!")
    first_post_image = page.find('#post-image-0')['src']
    expect(first_post_image).to match /.*\/test-image2.png/

  end

  scenario 'User can delete image' do
    sign_up
    submit_post

    first_post_image = page.find('#post-image-0')['src']
    expect(first_post_image).to match /.*\/test-image.jpeg/

    click_link 
    click_link "Edit"
    click_link 'Delete image'
    
    visit "/"
    posts = page.all(".post")
    # we dont want the first post to have an img element
    expect(posts.first).to have_content("Hello, world!")
  
    # this could be wrong and one may have to use page.has_css('#post-image-0')
    expect(posts.first.has_css?('img')).to be false
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
  attach_file('post-image', './spec/fixtures/test-image.jpeg')
  click_button "Submit"
end
