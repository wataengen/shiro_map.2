Rails.application.routes.draw do


devise_for :members,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"

    resources :shiros,  only: [:index, :show] do
      resources :shiro_favorites,   only: [:create, :destroy]
    end

    resources :members, only: [:show, :edit, :update] do
      member do
        resources :my_maps,           only: [:index, :create, :destory]
        resources :shiro_favorites,   only: [:index]
        resources :post_favorites,    only: [:index]
      end
    end
    get "members/confirm_quit" => "members#confirm_quit"
    patch "members/quit"       => "members#quit"

    resources :posts do
      resources :post_favorites,    only: [:create, :destroy]
    end

    get 'search' => "searches#search_top"
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'

  end

  namespace :admin do
    root to: "homes#top"
    resources :shiros,   except: [:destroy]
    resources :posts,    only:   [:index, :show, :edit, :update]
    resources :members,  only:   [:index, :show, :edit, :update]

    get 'search' => "searches#search_top"
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'
  end


end
