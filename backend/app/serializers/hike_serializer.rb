class HikeSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :website
end
