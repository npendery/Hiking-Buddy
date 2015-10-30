require 'rails_helper'

feature 'user views hikes', %{
  As a signed up user
  I want to view all hikes
  So that I can see what hikes I can go on
} do
  # Acceptance Criteria
  # user must be able to see all hikes created
  # most recently created hikes show first

  scenario 'views hikes succcessfully' do
    hike1 = FactoryGirl.create(:hike)
    hike2 = FactoryGirl.create(:hike)

    visit '/'

    expect(page).to have_content(hike1.name)
    expect(page).to have_content(hike1.location)
    expect(page).to have_content(hike2.name)
    expect(page).to have_content(hike2.location)
    expect(hike2.name).to be > hike1.name
  end
end
