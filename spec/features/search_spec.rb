require 'rails_helper'

 RSpec.feature 'user can seach for airbender members' do
  it "should show fire nation members and their data" do
    visit root_path
    select 'Fire Nation', from: 'nation'
    click_on "Search For Members"
    expect(current_path).to eq(search_path)

    expect(page).to have_content("There are 20 members of the Fire Nation.")
    expect(page).to have_css('.member', count: 20)

    within(first('.member')) do
      within('.name') do
        expect(page).to have_content("Afiko")
      end
      within('.photoUrl') do
        expect(page).to have_content("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
      end
      within('.affiliation') do
        expect(page).to have_content("Fire Nation")
      end
      within('.allies') do
        expect(page).to have_content("Fire Nation")
      end
      within('.enemies') do
        expect(page).to have_content("Aang")
      end
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has
