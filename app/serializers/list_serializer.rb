class ListSerializer < ActiveModel::Serializer
  # belongs_to :user
  # has_many :items

  attributes :id, :name, :user_id, :permissions
  
end
