class HikeSerializer < ActiveModel::Serializer
  embed :ids
  
  attributes :id, :name, :location, :description, :website
end
