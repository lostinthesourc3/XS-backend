class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
        post = Post.new(post_params)
        if post.save
            render json: post
        else
            render json: {message: "ERROR 406!", errors: post.errors.full_messages}, status: 406
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy

        render json: {message: "successfully deleted"}
    end 

    private

    def post_params
        params.require(:post).permit(:name, :title, :media, :tag, :text)
    end
end
