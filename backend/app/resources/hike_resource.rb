class HikeResource < JSONAPI::Resource
  attributes :id, :name, :location, :description, :website
end
