class SearchController < ApplicationController
  def show
    # 複数条件検索 + ランダム1件取得
    @dish = Dish.search_by_conditions(search_params).sample
    
    # 同じく詳細情報を表示
  end
end