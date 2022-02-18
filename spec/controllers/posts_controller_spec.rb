require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before(:each) do
    user = User.create({name: 'Bob', email: 'bob@example.com', password: 'Banana123'})
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe "POST /" do
    it "redirects to the posts url" do
      post :create, params: { post: { message: "Hello, world!", user_id: 13 } }
      expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
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
    pending it "redirects to the posts url" do
      post :create, params: { post: { message: "Hello, world!", user_id: 13 } }
      delete :destroy, params: { id: post.id }
      expect(response).to redirect_to(posts_url)
    end

    pending it "deletes a post" do
      post = Post.create({ message: "Hello, World!", user_id: 13 })
      delete :destroy, params: { post: { id: post.id }}

      expect(Post.exists?(post.id)).to be false
    end
  end
end
