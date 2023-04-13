class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
 
  def create
    @post = Post.new(post_params)

     if @post.save
      flash[:notice] = "スケジュールを新規登録しました"
       redirect_to posts_path
     else
       render "new"
     end
  end
 
  def show
  end
 
  def edit
  end
  
  def update
  end
 
  def destroy
  end
  
  private 

  def post_params
    params.require(:post).permit(
      :title,
      :start_at,
      :end_at,
      :is_all_day,
      :memo
    )
  end
end
