require 'rails_helper'

RSpec.describe Hike, type: :model do
  it { should have_valid(:name).when('Hike Name') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:location).when('here, anywhere') }
  it { should_not have_valid(:location).when('', nil) }

  it { should have_valid(:description).when('description') }
  it { should_not have_valid(:description).when('', nil) }

  context 'uniqueness' do
    let!(:hike) { FactoryGirl.create(:hike) }
    let!(:hike_2) { FactoryGirl.create(:hike) }

    it 'requires a unique name' do
      hike_2.name = hike.name
      expect(hike_2).to_not be_valid
      expect(hike_2.errors[:name]).to_not be_empty
    end
  end
end
