class PostsController < ApplicationController
 def show
    render template: 'posts/show'
  end

  def detail
    render template: 'posts/detail'
    end

  def new
    render template: 'posts/new'
  
  end

  def add
    title = params[:posts][:title]
    body = params[:posts][:body]
    post = Post.new()
    post.title = title
    post.body = body
    post.user_id = session[:user_id]
    post.save
    
    redirect_to '/posts/show'
  end
end
