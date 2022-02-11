require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can edit posts" do
    post = Post.create(message: "Hello, world!")
    visit "/posts/#{post.id}"
    click_link "Edit"
    fill_in "Message", with: "Edited message here!"
    click_button "Submit"
    expect(page).to_not have_content("Hello, world!")
    expect(page).to have_content("Edited message here!")
  end
end
