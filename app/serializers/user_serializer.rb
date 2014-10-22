class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :created_at
  
  # has_many :lists
  # has_many :items, through: :lists
end
