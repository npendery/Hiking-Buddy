class Api::V1::HikeResource < JSONAPI::Resource
  attributes :name, :location, :description, :website
end
