TicketManager::Engine.routes.draw do

  resources :ticket, :only=> [:show, :update, :create]
  resources :tickets, :only => [:index]
  resources :ticket_comments, :only => [:create]

end
