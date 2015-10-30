require 'rails_helper'

feature 'user edits hike', %{
  As a user
  I want to edit my hike
  So that other users can see the update
} do
  # Acceptance Criteria
  # I must provide valid information
  # I must be presented with errors if I fill out the form incorrectly
  # I must be able to get to the edit page from the question details page

  scenario 'edits hike description succcessfully' do
    hike = FactoryGirl.create(:hike)
    visit "/"

    click_on hike.name

    click_on "Edit"

    fill_in "Description", with: "Great workout!"

    click_on "Update hike"

    expect(page).to have_content("Hike updated.")
    expect(page).to have_content("Great workout!")
  end

  scenario 'edits hike unsucccessfully' do
    hike = FactoryGirl.create(:hike)
    visit "/"

    click_on hike.name

    click_on "Edit"

    fill_in "Description", with: ""

    click_on "Update hike"

    expect(page).to have_content("Description can't be blank")
  end
end
