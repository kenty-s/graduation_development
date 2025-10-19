Rails.application.routes.draw do
  # ========================================
  # MVP機能（現在実装中）
  # ========================================
  
  # ホーム（ガッツリ/サッパリのボタンがある）
  root 'home#index'
  
  # 検索結果（料理1件をランダム表示）
  post 'result', to: 'dishes#result'
  
  
  # ========================================
  # MVP後の拡張機能（ルーティングのみ先行定義）
  # ========================================
  
  # 詳細条件検索
  # get 'search/multiple_conditions', to: 'search#multiple_conditions'
  # post 'search/advanced_result', to: 'search#advanced_result'
  
  # ユーザー認証（Devise導入後に自動生成されるが、先に定義）
  # devise_for :users
  
  # 検索履歴（ログインユーザーのみ）
  # resources :search_histories, only: [:index, :destroy]
  
  # SNS投稿（X投稿機能）
  # post 'share/twitter', to: 'share#twitter'
  
  # 管理者画面
  # namespace :admin do
  #   root 'dashboard#index'
  #   resources :dishes
  #   resources :categories
  # end
end