class NewsItemsController < ApplicationController
  def index
    @news_items = news_item_scope.to_a
  end

  def show
    @news_item = news_item_scope.find(params[:id])
  end

  private

  def news_item_scope
    NewsItem.published
  end
end
