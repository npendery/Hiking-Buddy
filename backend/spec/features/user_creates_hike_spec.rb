require 'rails_helper'

feature 'user creates hike', %{
  As a signed up user
  I want to create new hike
  So that other users can view it
} do
  # Acceptance Criteria
  # user must specify all necessary information for the hike to save

  scenario 'creates hike succcessfully' do
    visit "/"

    click_on 'Add hike'

    fill_in "Name", with: "Monadnock Mountain"
    fill_in "Location", with: "116 Poole Rd, Jaffrey, NH 03452"
    fill_in "Description", with: "Best hike close to Boston! Many different
                                  routes to the top where you will get an
                                  amazing view!"
    fill_in "Website", with: "https://www.nhstateparks.org/visit/state-parks/
                              monadnock-state-park.aspx"

    click_on "Create hike"

    expect(page).to have_content("Hike added!")
    expect(page).to have_content("Monadnock Mountain")
  end

  scenario 'creates hike unsucccessfully, without name' do
    visit "/"

    click_on 'Add hike'

    fill_in "Name", with: ""
    fill_in "Location", with: "116 Poole Rd, Jaffrey, NH 03452"
    fill_in "Description", with: "Best hike close to Boston! Many different
                                  routes to the top where you will get an
                                  amazing view!"
    fill_in "Website", with: "https://www.nhstateparks.org/visit/state-parks/
                              monadnock-state-park.aspx"

    click_on "Create hike"

    expect(page).to have_content("Name can't be blank")
  end

  scenario 'creates hike unsucccessfully, without location' do
    visit "/"

    click_on 'Add hike'

    fill_in "Name", with: "Monadnock Mountain"
    fill_in "Location", with: ""
    fill_in "Description", with: "Best hike close to Boston! Many different
                                  routes to the top where you will get an
                                  amazing view!"
    fill_in "Website", with: "https://www.nhstateparks.org/visit/state-parks/
                              monadnock-state-park.aspx"

    click_on "Create hike"

    expect(page).to have_content("Location can't be blank")
  end

  scenario 'creates hike unsucccessfully, without description' do
    visit "/"

    click_on 'Add hike'

    fill_in "Name", with: "Monadnock Mountain"
    fill_in "Location", with: "116 Poole Rd, Jaffrey, NH 03452"
    fill_in "Description", with: ""
    fill_in "Website", with: "https://www.nhstateparks.org/visit/state-parks/
                              monadnock-state-park.aspx"

    click_on "Create hike"

    expect(page).to have_content("Description can't be blank")
  end
end
