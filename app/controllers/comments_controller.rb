class CommentsController < ApplicationController
    before_action :set_topic

    def create
        @comments = @topic.comments.build comments_params
    end

    private
        def set_topic
            @topic = Topic.find(params[:id])
        end

        def comments_params
            params.require(:comment).permit(:content)
        end
end