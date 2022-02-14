Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Get all pets
  get 'pets', to: 'pets#index'

  # Report a lost pet
  get 'pets/new', to: 'pets#new'
  post 'pets', to: 'pets#create'

  # Get a single pet
  get 'pets/:id', to: 'pets#show', as: :pet

  # update a pet
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'
  
  # delete a pet
  delete 'pets/:id', to: 'pets#delete'

end


# As a user I can...

# See all found pets
# See details about one pet
# Add a pet that I found
# Update details of a pet
# Delete a pet

# POST - Create
# GET - Read
# PATCH - Update
# DELETE - Delete