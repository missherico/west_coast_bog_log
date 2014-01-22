BlogLog::Application.routes.draw do
  
  root to: "creatures#index"

  get "/creatures", to: "creatures#all"

end
