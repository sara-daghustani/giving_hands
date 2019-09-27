require "application_system_test_case"

class OrganizationProfilesTest < ApplicationSystemTestCase
  setup do
    @organization_profile = organization_profiles(:one)
  end

  test "visiting the index" do
    visit organization_profiles_url
    assert_selector "h1", text: "Organization Profiles"
  end

  test "creating a Organization profile" do
    visit organization_profiles_url
    click_on "New Organization Profile"

    fill_in "Address", with: @organization_profile.address
    fill_in "City", with: @organization_profile.city
    fill_in "Facebook link", with: @organization_profile.facebook_link
    fill_in "Img", with: @organization_profile.img
    fill_in "Instagram link", with: @organization_profile.instagram_link
    fill_in "Linkedin link", with: @organization_profile.linkedin_link
    fill_in "Phone", with: @organization_profile.phone
    fill_in "Snapchat link", with: @organization_profile.snapchat_link
    fill_in "Twitter link", with: @organization_profile.twitter_link
    fill_in "Type", with: @organization_profile.type
    fill_in "Website link", with: @organization_profile.website_link
    fill_in "Whatsup link", with: @organization_profile.whatsup_link
    click_on "Create Organization profile"

    assert_text "Organization profile was successfully created"
    click_on "Back"
  end

  test "updating a Organization profile" do
    visit organization_profiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @organization_profile.address
    fill_in "City", with: @organization_profile.city
    fill_in "Facebook link", with: @organization_profile.facebook_link
    fill_in "Img", with: @organization_profile.img
    fill_in "Instagram link", with: @organization_profile.instagram_link
    fill_in "Linkedin link", with: @organization_profile.linkedin_link
    fill_in "Phone", with: @organization_profile.phone
    fill_in "Snapchat link", with: @organization_profile.snapchat_link
    fill_in "Twitter link", with: @organization_profile.twitter_link
    fill_in "Type", with: @organization_profile.type
    fill_in "Website link", with: @organization_profile.website_link
    fill_in "Whatsup link", with: @organization_profile.whatsup_link
    click_on "Update Organization profile"

    assert_text "Organization profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization profile" do
    visit organization_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization profile was successfully destroyed"
  end
end
