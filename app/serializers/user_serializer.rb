class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :password_digest

  has_many dogs
end
