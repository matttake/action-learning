class PostsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    if current_user.present?
      random    
      @posts = Post.where(user_id: current_user.id,indication: 1)  
    end
    @present = Post.where(indication:1)
    @maxim = Maxim.order("RAND()").first
  end
  
  def new
    random
    @post = Post.new
  end
  
  def create
    random
    @post = Post.new(post_params)
    if @post.save
      render :create
    else
      render :new
    end
  end
  
  def show
    random
    @post = Post.find(params[:id]) 
    
  end
  
  def edit
    random
    @post = Post.find(params[:id])
  end
  
  def update
    random
    @post = Post.find(params[:id]) 
    post = Post.find(params[:id])
    post.update(post_params)
    render :show
  end
  
  def list
    random
    @posts = Post.where(user_id: current_user.id)  
  end

  def destroy
    @post = Post.find(params[:id]) 
    if @post.destroy
      redirect_to root_path
    else
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :image,:fact, :perceive, :action, :action2, :action3,:publisher,:author,:issu,:page,:hit,:read,:indication).merge(user_id: current_user.id)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def random
    @random = Post.where(user_id: current_user.id).order("RAND()").limit(1)
  end

end
