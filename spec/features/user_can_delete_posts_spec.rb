require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    post = Post.create(message: "Hello, world!")
    visit "/posts/#{post.id}"
    click_link "Delete"
    expect(page).to_not have_content("Hello, world!")
  end
end
