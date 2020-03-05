require "application_system_test_case"

class BallotInititivesTest < ApplicationSystemTestCase
  setup do
    @ballot_inititive = ballot_inititives(:one)
  end

  test "visiting the index" do
    visit ballot_inititives_url
    assert_selector "h1", text: "Ballot Inititives"
  end

  test "creating a Ballot inititive" do
    visit ballot_inititives_url
    click_on "New Ballot Inititive"

    fill_in "Name", with: @ballot_inititive.name
    fill_in "Team", with: @ballot_inititive.team_id
    click_on "Create Ballot inititive"

    assert_text "Ballot inititive was successfully created"
    click_on "Back"
  end

  test "updating a Ballot inititive" do
    visit ballot_inititives_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ballot_inititive.name
    fill_in "Team", with: @ballot_inititive.team_id
    click_on "Update Ballot inititive"

    assert_text "Ballot inititive was successfully updated"
    click_on "Back"
  end

  test "destroying a Ballot inititive" do
    visit ballot_inititives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ballot inititive was successfully destroyed"
  end
end
