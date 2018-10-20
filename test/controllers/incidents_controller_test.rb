require 'test_helper'

class IncidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get incidents_url
    assert_response :success
  end

  test "should get new" do
    get new_incident_url
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post incidents_url, params: { incident: { city: @incident.city, comments: @incident.comments, dayofweek: @incident.dayofweek, drnum: @incident.drnum, incidenttype: @incident.incidenttype, latitude: @incident.latitude, longitude: @incident.longitude, specialevent: @incident.specialevent, state: @incident.state, street: @incident.street, timeofday: @incident.timeofday, weatherevent: @incident.weatherevent, zip: @incident.zip } }
    end

    assert_redirected_to incident_url(Incident.last)
  end

  test "should show incident" do
    get incident_url(@incident)
    assert_response :success
  end

  test "should get edit" do
    get edit_incident_url(@incident)
    assert_response :success
  end

  test "should update incident" do
    patch incident_url(@incident), params: { incident: { city: @incident.city, comments: @incident.comments, dayofweek: @incident.dayofweek, drnum: @incident.drnum, incidenttype: @incident.incidenttype, latitude: @incident.latitude, longitude: @incident.longitude, specialevent: @incident.specialevent, state: @incident.state, street: @incident.street, timeofday: @incident.timeofday, weatherevent: @incident.weatherevent, zip: @incident.zip } }
    assert_redirected_to incident_url(@incident)
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete incident_url(@incident)
    end

    assert_redirected_to incidents_url
  end
end
