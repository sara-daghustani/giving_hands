require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Address", with: @event.address
    fill_in "City", with: @event.city
    fill_in "Description", with: @event.description
    fill_in "End date", with: @event.end_date
    fill_in "End time", with: @event.end_time
    fill_in "Event type", with: @event.event_type
    fill_in "Img", with: @event.img
    fill_in "Number needed", with: @event.number_needed
    fill_in "Requirements", with: @event.requirements
    fill_in "Start date", with: @event.start_date
    fill_in "Start time", with: @event.start_time
    fill_in "Title", with: @event.title
    fill_in "Volunteer gender", with: @event.volunteer_gender
    fill_in "Volunteer skills", with: @event.volunteer_skills
    fill_in "Volunteer type", with: @event.volunteer_type
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event.address
    fill_in "City", with: @event.city
    fill_in "Description", with: @event.description
    fill_in "End date", with: @event.end_date
    fill_in "End time", with: @event.end_time
    fill_in "Event type", with: @event.event_type
    fill_in "Img", with: @event.img
    fill_in "Number needed", with: @event.number_needed
    fill_in "Requirements", with: @event.requirements
    fill_in "Start date", with: @event.start_date
    fill_in "Start time", with: @event.start_time
    fill_in "Title", with: @event.title
    fill_in "Volunteer gender", with: @event.volunteer_gender
    fill_in "Volunteer skills", with: @event.volunteer_skills
    fill_in "Volunteer type", with: @event.volunteer_type
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
