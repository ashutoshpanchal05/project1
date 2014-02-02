class PostsController < ApplicationController

def create
    @post = Post.new(post_params)
    @post.user_id =current_user.id	
	
	if @post.save
		redirect_to current_user
	else
	   flash[:error] ="oh no !"	
	   redirect_to current_user
	end
end

def post_params
	params.require(:post).permit(:content,:user_id)
end

end