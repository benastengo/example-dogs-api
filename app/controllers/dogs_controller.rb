class DogsController < ApplicationController
  def index
    render json: Dog.all
  end

  def create
    dog = Dog.new(
    name: params[:name],
    breed: params[:breed],
    age: params[:age],
    user_id: params[:user_id]
  )  
    if dog.save
      render json: dog.as_json
    else
      render json: {errors: dog.errors.full_messages}
    end
  end

  def show
    dog = Dog.find(params[:id])
    render json: dog.as_json
  end

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name] || dog.name
    dog.age = params[:age] || dog.age
    dog.breed = params[:breed] || dog.breed
    dog.save 
    render json: dog.as_json
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    render json: {message: "The dog has ... been deleted"}
  end
end
