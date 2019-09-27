require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { address: @event.address, city: @event.city, description: @event.description, end_date: @event.end_date, end_time: @event.end_time, event_type: @event.event_type, img: @event.img, number_needed: @event.number_needed, requirements: @event.requirements, start_date: @event.start_date, start_time: @event.start_time, title: @event.title, volunteer_gender: @event.volunteer_gender, volunteer_skills: @event.volunteer_skills, volunteer_type: @event.volunteer_type } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { address: @event.address, city: @event.city, description: @event.description, end_date: @event.end_date, end_time: @event.end_time, event_type: @event.event_type, img: @event.img, number_needed: @event.number_needed, requirements: @event.requirements, start_date: @event.start_date, start_time: @event.start_time, title: @event.title, volunteer_gender: @event.volunteer_gender, volunteer_skills: @event.volunteer_skills, volunteer_type: @event.volunteer_type } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
