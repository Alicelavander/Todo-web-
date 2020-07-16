Rails.application.routes.draw do
  get '/' => "tasks#top"
  get 'newToDo' => "tasks#newToDo"
  get 'task/:id' => 'tasks#detail'
  post "task/:id/delete" => "tasks#delete"
  
  
  get 'category/:category/' => "tasks#category"
  post 'category/:category/delete' => "tasks#deleteCategory"
  get 'category/:category/edit' => "tasks#editCategory"
  

  post "/createToDo" => "tasks#createToDo"
  post "/editCategory" => "tasks#editCategory"
  post "/deleteCategory" => "tasks#deleteCategory"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
