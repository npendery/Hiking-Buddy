class Api::V1::HikeResource < JSONAPI::Resource
  attributes :id, :name, :location, :description, :website
end
