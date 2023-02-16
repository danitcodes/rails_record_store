# albums GET      /albums(.:format)                albums#index
# POST            /albums(.:format)                albums#create
# new_album GET   /albums/new(.:format)            albums#new
# edit_album GET  /albums/:id/edit(.:format)       albums#edit
# album GET       /albums/:id(.:format)            albums#show
# PATCH           /albums/:id(.:format)            albums#update
# PUT             /albums/:id(.:format)            albums#update
# DELETE          /albums/:id(.:format)

class Album < ApplicationRecord
  has_many :songs, dependent: :destroy
end
