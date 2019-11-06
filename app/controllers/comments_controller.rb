class CommentsController < ApplicationController
    before_action :set_topic

    def create
        @topic.comments.create! comments_params
        redirect_to @topic
    end

    private
        def set_topic
            @topic = Topic.find(params[:topic_id])
        end

        def comments_params
            params.require(:comment).permit(:content)
        end
end