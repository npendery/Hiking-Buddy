require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::HikesController, :type => :controller do
  describe "GET /hikes" do
    it "returns all hikes, ordered by date created (most recent first)" do
      first = FactoryGirl.create(:hike, created_at: Time.now - 10)
      second = FactoryGirl.create(:hike, created_at: Time.now - 30)
      third = FactoryGirl.create(:hike, created_at: Time.now - 100)

      ordered_hikes = [first.name, second.name, third.name]

      get :index

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      hikes = body["data"].map { |m| m["attributes"]["name"] }

      expect(hikes).to match_array(ordered_hikes)
    end
  end

  describe "GET #show" do
    it "returns a single hike" do
      hike = FactoryGirl.create(:hike)

      get :show, id: hike.id

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      expect(body["data"]["attributes"]["description"]).to eq hike.description
    end
  end

  pending describe "POST #create" do
    it "creates a new hike" do
      # @request.env["HTTP_ACCEPT"] = "application/vnd.api+json"
      # @request.env["Content-Type"] = "application/vnd.api+json"
      hike = FactoryGirl.build(:hike)
      hike_attr = {
        name: hike.name,
        location: hike.location,
        description: hike.description,
        website: hike.website
      }
      request_headers = {
        "Accept" => "application/vnd.api+json",
        "Content-Type" => "application/vnd.api+json"
      }
      post :create, format: :json, hike: hike_attr, request_headers

      expect(response.status).to eq 201
      expect(Hike.all.count).to eq 1
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
    it "updates a hike succesfully" do
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

    it "updates a hike unsuccesfully" do
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
