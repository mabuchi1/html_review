class BlogsController < ApplicationController
  def top
    @blogs = Blog.with_attached_images.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    end
    
    def new
    @blog = Blog.new
    end
    
    def create
    Blog.create(blog_params)
    redirect_to blogs_path
    end

    def show
      @blog = Blog.find(params[:id])
      @comment = Comment.new
      @comments = @blog.comments.includes(:user)
    end

    def edit
      if current_user.admin?
        @blog = Blog.find(params[:id])
      else
        redirect_to blog_path
      end
    end

    def update
      blog = Blog.find(params[:id])
      blog.update(blog_params)
      redirect_to blog_path(blog.id)
    end

    def destroy
      if user_signed_in? && current_user.admin? && current_user.id == @blog.user.id
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to blogs_path
      else
        redirect_to blogs_path
      end
    end
    
    private
    def blog_params
    params.require(:blog).permit(:title, :text, images: []).merge(user_id: current_user.id)
    end
    
end
