require 'rails_helper'

RSpec.feature "User can submit a post", type: :feature do
  scenario "User sees the post content" do
    sign_up_log_in
    submit_post(image: true)

    posts = page.all('.post')
    first_post_image = posts.first.find('img')['src']
    
    expect(posts.length).to eq 1
    expect(posts.first).to have_content("Hello, world!")
    expect(first_post_image).to match /.*\/test-image.jpeg/
  end

  scenario "User sees the date and time of the post" do
    sign_up_log_in
    submit_post
    expect(page).to have_content("31 Dec 1999 at 23:59")
  end

  scenario "User sees the post creator" do
    sign_up_log_in
    submit_post
    expect(page).to have_content("Bob Bam")
  end
end
