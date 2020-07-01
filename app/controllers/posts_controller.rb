class PostsController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :random, except: :index
  before_action :set_posts, except: :index
  
  def index
    if current_user.present?
      random    
      set_posts
      @posts_action = Post.where(user_id: current_user.id,indication: 1)  
    end
    @present = Post.where(indication:1)
    @maxim = Maxim.order("RAND()").first
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      render :create
    else
      render :new
    end
  end
  
  def show
    @post = Post.find(params[:id]) 
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id]) 
    if @post.update(post_params)
      redirect_to post_path(@post)
    else 
      render :edit
    end
  end
  
  def destroy
    @post = Post.find(params[:id]) 
    if @post.destroy
      redirect_to root_path
    else
      redirect_to post_path(@post)
    end
  end
  
  def list
  end

  
  private
  def post_params
    params.require(:post).permit(:title, :image, :fact, :perceive, :action, :action2, :action3,:publisher,:author,:issu,:page,:hit,:read,:indication).merge(user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
  def random
    @random = Post.where(user_id: current_user.id).order("RAND()").limit(1)
  end
  
  def set_posts
    @posts = Post.where(user_id: current_user.id)  
  end
end