Rails.application.routes.draw do

  root 'songs#index'

  post 'songs/upload' => 'songs#upload', as: :upload
  get  'songs/delete' => 'songs#delete', as: :delete

end
