class PostsController < ApplicationController
    def index
        @posts = Post.order("created_at DESC")
    end
    
    def create
       Post.create(memo: params[:memo])
    end  
end
