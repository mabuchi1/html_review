class BlogsController < ApplicationController
  def top
    @blogs = Blog.all
    end
    
    def new
    @blog = Blog.new
    end
    
    def create
    Blog.create(blog_params)
    binding.pry
    redirect_to blogs_path
    end
    
    private
    def blog_params
    params.require(:blog).permit(:title, :text, images: [])
    end
    
end
