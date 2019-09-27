require "application_system_test_case"

class VolunteerProfilesTest < ApplicationSystemTestCase
  setup do
    @volunteer_profile = volunteer_profiles(:one)
  end

  test "visiting the index" do
    visit volunteer_profiles_url
    assert_selector "h1", text: "Volunteer Profiles"
  end

  test "creating a Volunteer profile" do
    visit volunteer_profiles_url
    click_on "New Volunteer Profile"

    fill_in "Address", with: @volunteer_profile.address
    fill_in "Age", with: @volunteer_profile.age
    fill_in "Img", with: @volunteer_profile.img
    fill_in "Intrests", with: @volunteer_profile.intrests
    fill_in "Phone", with: @volunteer_profile.phone
    fill_in "Skills", with: @volunteer_profile.skills
    fill_in "Specialty", with: @volunteer_profile.specialty
    click_on "Create Volunteer profile"

    assert_text "Volunteer profile was successfully created"
    click_on "Back"
  end

  test "updating a Volunteer profile" do
    visit volunteer_profiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @volunteer_profile.address
    fill_in "Age", with: @volunteer_profile.age
    fill_in "Img", with: @volunteer_profile.img
    fill_in "Intrests", with: @volunteer_profile.intrests
    fill_in "Phone", with: @volunteer_profile.phone
    fill_in "Skills", with: @volunteer_profile.skills
    fill_in "Specialty", with: @volunteer_profile.specialty
    click_on "Update Volunteer profile"

    assert_text "Volunteer profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteer profile" do
    visit volunteer_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteer profile was successfully destroyed"
  end
end
