class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: "This dog's profile has been updated successfully."
      }
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    if @dog.destroy!(dog_params)
      render status: 200, json: {
        message: "This dog's profile has been deleted successfully."
      }
    end
  end

  private
  def dog_params
    params.permit(:d_name, :d_breed)
  end
end