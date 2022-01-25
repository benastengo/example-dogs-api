class DogSerializer < ActiveModel::Serializer
  attributes :name, :breed, :age

  belongs_to :users
end
