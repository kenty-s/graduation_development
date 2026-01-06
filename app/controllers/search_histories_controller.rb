class SearchHistoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @search_histories = current_user.search_histories.recent
  end

  def destroy
    history = current_user.search_histories.find(params[:id])
    history.destroy
    redirect_to search_histories_path, notice: "削除しました"
  end
end
