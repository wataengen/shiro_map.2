Rails.application.routes.draw do

  namespace :admin do
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'
  end
  namespace :admin do
    get 'members/index'
    get 'members/show'
    get 'members/edit'
  end
  namespace :admin do
    get 'posts/index'
    get 'posts/edit'
  end
  namespace :admin do
    get 'shiros/index'
    get 'shiros/new'
    get 'shiros/show'
    get 'shiros/edit'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'searches/search_shiro_index'
    get 'searches/search_post_index'
    get 'searches/search_tag_index'
  end
  namespace :public do
    get 'post_favorites/index'
  end
  namespace :public do
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :public do
    get 'shiro_favorites/index'
  end
  namespace :public do
    get 'my_maps/index'
  end
  namespace :public do
    get 'members/show'
    get 'members/edit'
    get 'members/confirm_quit'
  end
  namespace :public do
    get 'shiros/index'
    get 'shiros/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
devise_for :members,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
end
