class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  
  # has_many :lists
  # has_many :items, through: :lists
end
