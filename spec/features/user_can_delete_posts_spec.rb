require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can delete posts" do
    user = User.create(name: "Bob Bam", email: "bob@example.com", password: "Banana123")
    post = Post.create(message: "Hello, world!", user_id: user.id)
    visit "/posts/#{post.id}"
    click_link "Delete"
    expect(page).to_not have_content("Hello, world!")
    expect(page).to_not have_content("Bob Bam")
  end
end
