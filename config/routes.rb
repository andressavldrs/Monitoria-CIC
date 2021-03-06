
MonitoriaCic::Application.routes.draw do
  resources :home
  root :to => redirect('/home')
  resources :candidatos
  root :to => redirect('/candidatos')
  resources :disciplinas
  root :to => redirect('/disciplinas')
  resources :professores do
    collection { post :import }
  end
  root :to => redirect('/professores')
  resources :lista_disciplinas do
    collection { post :import }
  end
  root :to => redirect('/lista_disciplinas')
end
