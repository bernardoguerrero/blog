class PostsController < ApplicationController
	def new
	end

	def create
  		@post = Post.new(params[:post].permit(:title, :text))
 
  		@post.save
  		redirect_to @post
	end
 
	private
  		def post_params
    		arams.require(:post).permit(:title, :text)
 		end
	
	def show
  		@post = Post.find(params[:id])	
	end

 	def index
  		@posts = Post.all
	end
end
