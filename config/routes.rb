DBF5::Application.routes.draw do

  get "info/who_log"
  resources :logs

  get "admin/login"
  get "admin/logout"
  get "admin/index"
  resources :users

  root :to => "admin#login"


  match "/logs/iAdd/:value/:category/:note/:own/:user_id" => "logs#iAdd"
  match "/admin/ilogin/:name/:password" => "admin#iLogin"
  match ':controller(/:action(/:id(.:format)))'
end
