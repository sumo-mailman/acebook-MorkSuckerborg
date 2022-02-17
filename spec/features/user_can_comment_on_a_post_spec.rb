require 'rails_helper'

RSpec.feature "Users can comment on a post", type: :feature do
  scenario "User sees the comment content" do
    sign_up_log_in
    submit_post
    
    visit "/posts/#{Post.all.last.id}"
    submit_comment

    expect(page.find('.comment')).to have_content("Actually, I think you'll find...")
  end

  scenario "User sees the date and time of the comment" do
    sign_up_log_in
    submit_post
    
    visit "/posts/#{Post.all.last.id}"
    submit_comment

    expect(page.find('.comment')).to have_content("31 Dec 1999 at 23:59")
  end

  scenario "User sees the comment creator" do
    sign_up_log_in
    submit_post
    
    visit "/posts/#{Post.all.last.id}"
    submit_comment

    expect(page.find('.comment')).to have_content("Bob Bam")
  end
end
