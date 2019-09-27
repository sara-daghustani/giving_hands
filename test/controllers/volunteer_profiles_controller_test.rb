require 'test_helper'

class VolunteerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer_profile = volunteer_profiles(:one)
  end

  test "should get index" do
    get volunteer_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_volunteer_profile_url
    assert_response :success
  end

  test "should create volunteer_profile" do
    assert_difference('VolunteerProfile.count') do
      post volunteer_profiles_url, params: { volunteer_profile: { address: @volunteer_profile.address, age: @volunteer_profile.age, img: @volunteer_profile.img, intrests: @volunteer_profile.intrests, phone: @volunteer_profile.phone, skills: @volunteer_profile.skills, specialty: @volunteer_profile.specialty } }
    end

    assert_redirected_to volunteer_profile_url(VolunteerProfile.last)
  end

  test "should show volunteer_profile" do
    get volunteer_profile_url(@volunteer_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_volunteer_profile_url(@volunteer_profile)
    assert_response :success
  end

  test "should update volunteer_profile" do
    patch volunteer_profile_url(@volunteer_profile), params: { volunteer_profile: { address: @volunteer_profile.address, age: @volunteer_profile.age, img: @volunteer_profile.img, intrests: @volunteer_profile.intrests, phone: @volunteer_profile.phone, skills: @volunteer_profile.skills, specialty: @volunteer_profile.specialty } }
    assert_redirected_to volunteer_profile_url(@volunteer_profile)
  end

  test "should destroy volunteer_profile" do
    assert_difference('VolunteerProfile.count', -1) do
      delete volunteer_profile_url(@volunteer_profile)
    end

    assert_redirected_to volunteer_profiles_url
  end
end
