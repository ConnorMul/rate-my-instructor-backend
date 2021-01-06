class CommentsController < ApplicationController


    def index
        comments = Comment.all
        render json: comments, except:[:updated_at, :created_at]
    end

    def new 
        comment = Comment.new
    end 

    def create 
        comment = Comment.create(comment_params)
        render json: comment, except:[:updated_at, :created_at]
    end 

    def show
        comment = Comment.find_by(id: params[:id])
        render json:  comment, except:[:updated_at, :created_at]
    end 

    def edit
        comment = Comment.find_by(id: params[:id])
    end 

    def update
       comment = Comment.find_by(id: params[:id])
       comment.update(comment_params)
       render json: comment
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: comment
    end
    
    private

    def comment_params
        params.permit(:content, :agree, :user_id, :instructor_id)
    end

    
end
