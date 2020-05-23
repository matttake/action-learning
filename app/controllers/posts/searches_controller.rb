class Posts::SearchesController < ApplicationController
  def index
    @random = Post.offset( rand(Post.count) ).limit(1)
    @posts = Post.search(params[:keyword])
  end
end