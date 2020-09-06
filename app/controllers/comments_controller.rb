class CommentsController < ApplicationController

    def create
      @product = Product.find(params[:product_id])
      @comment = current_user.comments.new(comment_params)
      @comment.product_id = @product.id
      @comment.save
      render :index
    end

    def destroy
      @product = Product.find(params[:product_id])
      @comment = Comment.new
      @comment = Comment.find_by(id: params[:id], product_id: params[:product_id]).destroy
      render :index
    end

    private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
