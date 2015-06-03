Rails.application.routes.draw do
  root 'splash#index'
  # root 'songs#index'
  post 'stuff' => 'splash#stuff', as: :stuff

  get  'songs/index'  => 'songs#index',  as: :songs
  post 'songs/upload' => 'songs#upload', as: :upload
  get  'songs/delete' => 'songs#delete', as: :delete
  get  'songs/purchase'   => 'songs#purchase',   as: :purchase

end
