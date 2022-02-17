require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can edit posts" do
    sign_up_log_in
    submit_post
    
    visit "/posts/#{Post.all.last.id}"
    click_link 'Edit'
    fill_in "post[message]", with: "Edited message here!"
    click_button "Submit"
    
    # expect(page).to_not have_content("Hello, world!")
    expect(page).to have_content("Edited message here!")
    expect(page).to have_content("Post successfully edited")
  end

  scenario "User can update image" do
    sign_up_log_in
    submit_post

    posts = page.all('.post')
    posts[0].click_link('Add comment')
    click_link "Edit"

    # attach_file('post[image]', './spec/fixtures/test-image2.png')
    page.attach_file('post[image]', './spec/fixtures/test-image2.png')
    # attach_file('post-image', './spec/fixtures/test-image2.png')
    click_button "Submit"

    



    posts = page.all(".post")
    expect(posts.length).to eq 1
    expect(posts.first).to have_content("Hello, world!")
    first_post_image = page.find('.post-image')['src']
    expect(first_post_image).to match /.*\/test-image2.png/

  end

  scenario 'User can delete image' do
    sign_up_log_in
    submit_post(image: true)

    posts = page.all('.post')
    posts[0].click_link('Add comment')
    click_link "Edit"
    click_link 'Delete image'
    
    visit "/"
    posts = page.all(".post")
    
    expect(posts.first).to have_content("Hello, world!")
    expect(posts.first.has_css?('img')).to be false
  end
end
