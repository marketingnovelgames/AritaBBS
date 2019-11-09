class SearchController < ApplicationController
  def search
    @titles = Topic.ransack(:title_cont => params[:keyword]).result
    @contents = ActionText::RichText.ransack(:content_cont => params[:keyword]).result
    @comments = Comment.ransack(:content_cont => params[:keyword]).result
  end
end
