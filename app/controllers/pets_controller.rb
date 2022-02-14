class PetsController < ApplicationController

  # getting the pet by id and saving it as an instance veriable @pet
  before_action :get_pet, only: [:show, :edit, :update, :delete]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  def delete
    @pet.destroy
    redirect_to pets_path
  end

  private
  
  def get_pet
    @pet = Pet.find(params[:id]) 
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species)
  end
end
