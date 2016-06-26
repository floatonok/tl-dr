class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user, except: [:index, :show]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to user_post_path(@post.user, @post), notice: 'Post was successfully created!'
    else
      render 'new'
    end
  end

  def update
    if @post.user.id = current_user.id
      if @post.update(post_params)
        redirect_to user_post_path, notice: 'Post was successfully updated.'
      else
        render 'edit'
      end
    end
  end

  def destroy
    @post.destroy
    redirect_to user_posts_path, notice: 'Post was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
