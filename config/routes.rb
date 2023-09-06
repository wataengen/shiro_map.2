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

    resources :shiros,  only: [:index, :show]

    resources :members, only: [:show, :edit, :update]
    get "members/confirm_quit" => "members#confirm_quit"
    patch "members/quit"       => "members#quit"

    resources :my_maps, only: [:index, :destory, :create]
    get 'shiro_favorites/index'
    resources :posts,   only: [:new, :index, :show, :edit]
    get 'post_favorites/index'

    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'

  end

  namespace :admin do
    root to: "homes#top"
    resources :shiros, except: [:destroy]
    resources :posts,  only: [:index, :create, :edit, :update]
    resources :member, only: [:index, :show, :edit, :update]

    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'
  end


end
