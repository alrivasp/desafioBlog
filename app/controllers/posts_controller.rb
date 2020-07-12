class PostsController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password:"XAHTJEAS23123%23", except: :index

  def index    
    @post = Post.all_post
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
  end
end
