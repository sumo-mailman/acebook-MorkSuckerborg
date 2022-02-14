require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "POST /" do
    # need to have signed in user to create posts
    pending it "redirects to the posts url" do
      post :create, params: { post: { message: "Hello, world!", user_id: 13 } }
      expect(response).to redirect_to(posts_url)
    end

    # need to have signed in user to create posts
    pending it "creates a post" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /" do
    # need to have signed in user to create posts
    pending it "redirects to the posts url" do
      post :create, params: { post: { message: "Hello, world!", user_id: 13 } }
      delete :destroy, params: { id: post.id }
      expect(response).to redirect_to(posts_url)
    end

    pending it "deletes a post" do
      post = Post.create({ message: "Hello, World!", user_id: 13 })
      delete :destroy, params: { id: post.id }

      expect(Post.exists?(post.id)).to be false
    end
  end
end
