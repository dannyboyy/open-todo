class ItemSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :list
  delegate :user, to: :list
end
