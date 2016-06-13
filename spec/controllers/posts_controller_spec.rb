require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    let(:my_post) { Post.create!( title:  RandomData.random_sentence, body:   RandomData.random_paragraph) }
    
    describe "GET index" do
     it "returns http success" do
       get :index
       expect(response).to have_http_status(:success)
     end
 
     it "assigns [my_post] to @posts" do
       get :index
       expect(assigns(:posts)).to eq([my_post])
     end
    end
    
    describe "GET show" do
     it "returns http success" do
       get :show, {id: my_post.id}
       expect(response).to have_http_status(:success)
     end

     it "renders the #show view" do
       get :show, {id: my_post.id}
       expect(response).to render_template :show
     end

     it "assigns my_post to @post" do
       get :show, {id: my_post.id}
       expect(assigns(:post)).to eq(my_post)
     end
    end
   
    describe "GET edit" do
     it "returns http success" do
       get :edit, {id: my_post.id}
       expect(response).to have_http_status(:success)
     end

     it "renders the #edit view" do
       get :edit, {id: my_post.id}
       expect(response).to render_template :edit
     end

     it "assigns post to be updated to @post" do
       get :edit, {id: my_post.id}
       post_instance = assigns(:post)

       expect(post_instance.id).to eq my_post.id
       expect(post_instance.title).to eq my_post.title
       expect(post_instance.body).to eq my_post.body
     end
    end
   
    describe "GET new" do
     it "returns http success" do
       get :new
       expect(response).to have_http_status(:success)
     end

     it "renders the #new view" do
       get :new
       expect(response).to render_template :new
     end

     it "initializes @post" do
       get :new
       expect(assigns(:post)).not_to be_nil
     end
    end
end
