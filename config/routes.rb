Rails.application.routes.draw do
    get 'home/index' => 'home#index'
    get 'home/result' => 'home#result'
    
    #Create
    get '/posts/new' => 'posts#new'
    #post '/posts/create' => 'posts#create'
    get '/posts/create' => 'posts#create'
    
    #Read
    get '/posts/index' => 'posts#index'
    get '/posts/show/:post_id' => 'posts#show'
    
    #update
    get '/posts/edit/:post_id' => 'posts#edit'
    #post 'posts/update/:post_id' => 'posts#update'
    
    #delete
   # post '/posts/destroy/:post_id' => 'posts#destroy'
    post '/posts/destroy/:post_id' => 'posts#destroy'
    
    #deleteAll
    get '/posts/destroyAll' => 'posts#destroyAll'
    
    post '/comment' => 'comments#create'
    post '/comment/:post_id/destroy/:comment_id' => 'comments#destroy
    '
    root 'posts#new'
end
