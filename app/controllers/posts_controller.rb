class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:show, :edit, :destroy, :update]
    before_action :set_user_major, except: [:sub_index, :sub_create, :cub_new]
    before_action :set_user_minor, except: [:index, :create, :new]
    
    def index
        @posts = @major_post.all
    end
    
    def sub_index
        @posts = @minor_post.all
    end
    
    def create
        @post = @major_post.create(post_params)
        redirect_to post_url(@post)
    end
    
    def sub_create
        @post = @minor_post.create(sub_post_params)
        redirect_to post_url(@post)
    end
    
    def new
        @post = @major_post.new
    end
    
    def sub_new
        @post = @minor_post.new
    end
    
    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to posts_path
    end
    
    def edit
    end
    
    def sub_edit
    end
    
    def update
        @findpost.update(post_params)
        redirect_to post_url(@findpost)
    end
    
    def sub_update
        @findpost.update(sub_post_params)
        redirect_to post_url(@findpost)
    end
    
    def show
        
    end
    
    private
    def set_post
        @findpost = Post.find(params[:id])
    end
    
    def post_params
        params.require("#{@major_post}".downcase).permit(:user_id, :title, :content, :type)
    end
    
    def sub_post_params
        params.require("#{@minor_post}".downcase).permit(:user_id, :title, :content, :type)
    end
    
    def set_user_major
        @mjp = Major.find(current_user.profile.major_id).english + 'post'
        @major_post = @mjp.constantize
    end
    
    def set_user_minor     
        @mip = Major.find(current_user.profile.minor_id).english + 'post'
        @minor_post = @mip.constantize
    end
end
