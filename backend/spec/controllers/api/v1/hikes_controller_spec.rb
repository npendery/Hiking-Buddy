require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::HikesController, :type => :controller do
  describe "GET #index" do
    it "returns all hikes, ordered by date created (most recent first)" do
      first = FactoryGirl.create(:hike, created_at: Time.now - 10)
      second = FactoryGirl.create(:hike, created_at: Time.now - 30)
      third = FactoryGirl.create(:hike, created_at: Time.now - 100)

      ordered_hikes = [first, second, third]

      get :index

      serialized_hikes = ActiveModel::ArraySerializer.new(ordered_hikes, root: :hikes)

      expect(response.status).to eq 200

      expect(json).to be_json_eq(serialized_hikes)
    end
  end

  describe "GET #show" do
    it "returns a single hike" do
      hike = FactoryGirl.create(:hike)

      serialized_hike = HikeSerializer.new(hike)

      get :show, id: hike.id

      expect(json).to be_json_eq(serialized_hike)
    end
  end

  describe "POST #create" do
    it "creates a new hike" do
      hike = FactoryGirl.build(:hike)
      hike_attr = {
        name: hike.name,
        location: hike.location,
        description: hike.description,
        website: hike.website
      }

      post :create, hike: hike_attr

      expect(response.status).to eq 201
      expect(Hike.all.count).to eq 1
      expect(json).to be_json_eq HikeSerializer.new(Hike.first)
    end

    it "fails if required attributes are missing" do
      hike = FactoryGirl.build(:hike)
      hike_attr = {
        name: "",
        location: hike.location,
        description: hike.description,
        website: hike.website
      }

      post :create, hike: hike_attr

      expect(response.status).to eq 422
      expect(Hike.all.count).to eq 0
    end

    it "fails if name already taken" do
      hike1 = FactoryGirl.create(:hike)
      hike2 = FactoryGirl.build(:hike)
      hike2_attr = {
        name: hike1.name,
        location: hike2.location,
        description: hike2.description,
        website: hike2.website
      }

      post :create, hike: hike2_attr

      expect(response.status).to eq 422
      expect(Hike.all.count).to eq 1
    end
  end

  describe "PUT #update" do
    pending it "updates a hike succesfully" do
      hike = FactoryGirl.create(:hike)

      hike_attr = {
        name: "New Name",
        location: hike.location,
        description: hike.description,
        website: hike.website
      }

      put :update, id: hike.id, hike: hike_attr

      expect(response.status).to eq 202
      expect(hike.name).to eq "New Name"
    end

    pending it "updates a hike unsuccesfully" do
      hike = FactoryGirl.create(:hike)

      hike_attr = {
        name: "",
        location: hike.location,
        description: hike.description,
        website: hike.website
      }

      put :update, id: hike.id, hike: hike_attr

      expect(response.status).to eq 422
    end
  end
end
