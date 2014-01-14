GaSchedulerApp::Application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :users do
    member do 
      post :add_course
    end
  end
  
  resources :rooms
  resources :courses
  root :to => 'courses#index'

  namespace :admin do
  root :to => 'admin#index'
    resources :courses, :rooms
    resources :users do
      member do 
        post :add_course
        post :drop_course        
      end
    end
  end

  get "/signup",      to: "users#new",          as: "signup"
  get "/login",       to: "sessions#new" ,      as: "login"
  delete "/logout",   to: "sessions#destroy",   as: "logout"

end

# ➜  ga_scheduler_app git:(master) ✗ rake routes      
#              root        /                                 users#index

# LOGIN
#          sessions POST   /sessions(.:format)               sessions#create
#       new_session GET    /sessions/new(.:format)           sessions#new
#           session DELETE /sessions/:id(.:format)           sessions#destroy

# USERS PUBLIC
#             users GET    /users(.:format)                  users#index
#                   POST   /users(.:format)                  users#create
#          new_user GET    /users/new(.:format)              users#new
#         edit_user GET    /users/:id/edit(.:format)         users#edit
#              user GET    /users/:id(.:format)              users#show
#                   PUT    /users/:id(.:format)              users#update
#                   DELETE /users/:id(.:format)              users#destroy

# ROOMS PUBLIC
#             rooms GET    /rooms(.:format)                  rooms#index
#                   POST   /rooms(.:format)                  rooms#create
#          new_room GET    /rooms/new(.:format)              rooms#new
#         edit_room GET    /rooms/:id/edit(.:format)         rooms#edit
#              room GET    /rooms/:id(.:format)              rooms#show
#                   PUT    /rooms/:id(.:format)              rooms#update
#                   DELETE /rooms/:id(.:format)              rooms#destroy

# COURSES PUBLIC
#           courses GET    /courses(.:format)                courses#index
#                   POST   /courses(.:format)                courses#create
#        new_course GET    /courses/new(.:format)            courses#new
#       edit_course GET    /courses/:id/edit(.:format)       courses#edit
#            course GET    /courses/:id(.:format)            courses#show
#                   PUT    /courses/:id(.:format)            courses#update
#                   DELETE /courses/:id(.:format)            courses#destroy

# COURSES ADMIN
#     admin_courses GET    /admin/courses(.:format)          admin/courses#index
#                   POST   /admin/courses(.:format)          admin/courses#create
#  new_admin_course GET    /admin/courses/new(.:format)      admin/courses#new
# edit_admin_course GET    /admin/courses/:id/edit(.:format) admin/courses#edit
#      admin_course GET    /admin/courses/:id(.:format)      admin/courses#show
#                   PUT    /admin/courses/:id(.:format)      admin/courses#update
#                   DELETE /admin/courses/:id(.:format)      admin/courses#destroy

# USERS ADMIN
#       admin_users GET    /admin/users(.:format)            admin/users#index
#                   POST   /admin/users(.:format)            admin/users#create
#    new_admin_user GET    /admin/users/new(.:format)        admin/users#new
#   edit_admin_user GET    /admin/users/:id/edit(.:format)   admin/users#edit
#        admin_user GET    /admin/users/:id(.:format)        admin/users#show
#                   PUT    /admin/users/:id(.:format)        admin/users#update
#                   DELETE /admin/users/:id(.:format)        admin/users#destroy

# ROOMS ADMIN
#       admin_rooms GET    /admin/rooms(.:format)            admin/rooms#index
#                   POST   /admin/rooms(.:format)            admin/rooms#create
#    new_admin_room GET    /admin/rooms/new(.:format)        admin/rooms#new
#   edit_admin_room GET    /admin/rooms/:id/edit(.:format)   admin/rooms#edit
#        admin_room GET    /admin/rooms/:id(.:format)        admin/rooms#show
#                   PUT    /admin/rooms/:id(.:format)        admin/rooms#update
#                   DELETE /admin/rooms/:id(.:format)        admin/rooms#destroy
