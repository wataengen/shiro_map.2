Rails.application.routes.draw do


devise_for :members,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_scope :member do
  post 'members/guest_sign_in', to: 'public/sessions#guest_sign_in'
end


devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"
    get "/mypage" => "homes#mypage"

    resources :shiros,  only: [:index, :show] do
      resource :shiro_favorites,   only: [:create, :destroy]
      resource :my_maps,           only: [:create, :destroy]
    end

    resources :members, only: [:show, :edit, :update] do
      member do
        resources :shiro_favorites,   only: [:index]
        resources :post_favorites,    only: [:index]
        resources :post_comments,     only: [:index, :show, :edit, :update]
        resources :my_maps,           only: [:index]
        get "members/confirm_quit" => "members#confirm_quit"
        patch "members/quit"       => "members#quit"
        get :follows, :followers
        get "posts/draft_index" => "posts#draft_index"
      end
      resource :relationships, only: [:create, :destroy]
      resources :notifications, only: [:index]
    end
    resources :messages, only: [:create]
    resources :rooms, only: [:create,:show]
    resources :notifications, only: [:destroy]


    resources :posts do
      get "delet_post"  =>  "posts#delet_post"
      resources :post_comments,     only: [:create, :destroy]
      resource :post_favorites,    only: [:create, :destroy]
    end

    get 'search' => "searches#search_top"
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'

  end

  namespace :admin do
    root to: "shiros#index"
    resources :shiros,   except: [:destroy]
    resources :posts,    only:   [:index, :show, :edit, :update]
    resources :members,  only:   [:index, :show, :edit, :update] do
      member do
        get 'show_post_comments'
      end
    end
    resources :post_comments,  only:   [:index, :show, :edit, :update]

    get 'search' => "searches#search_top"
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'
  end


end
