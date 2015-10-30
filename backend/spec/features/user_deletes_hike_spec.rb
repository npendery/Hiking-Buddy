require 'rails_helper'

feature 'user deletes hike', %{
  As a user
  I want to delete a hike
  So that other users cant see it anymore
} do
  # Acceptance Criteria
  # I must be able to delete the hike
  # I must return to the main page

  scenario 'deletes hike' do
    hike = FactoryGirl.create(:hike)
    visit "/"

    click_on hike.name

    click_on "Delete"

    expect(page).to have_content("Hike deleted.")
    expect(page).to_not have_content(hike.name)
    expect(current_path).to eq("/hikes")
  end
end
