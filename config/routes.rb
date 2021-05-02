Rails.application.routes.draw do
  get 'client/file', to: 'client#getAllFiles'
  get 'client/file/:fileName', to: 'client#getFile'
  post 'client/file', to: 'client#sendFile'
end
