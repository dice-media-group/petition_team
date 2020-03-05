require 'test_helper'

class BallotInititivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ballot_inititive = ballot_inititives(:one)
  end

  test "should get index" do
    get ballot_inititives_url
    assert_response :success
  end

  test "should get new" do
    get new_ballot_inititive_url
    assert_response :success
  end

  test "should create ballot_inititive" do
    assert_difference('BallotInititive.count') do
      post ballot_inititives_url, params: { ballot_inititive: { name: @ballot_inititive.name, team_id: @ballot_inititive.team_id } }
    end

    assert_redirected_to ballot_inititive_url(BallotInititive.last)
  end

  test "should show ballot_inititive" do
    get ballot_inititive_url(@ballot_inititive)
    assert_response :success
  end

  test "should get edit" do
    get edit_ballot_inititive_url(@ballot_inititive)
    assert_response :success
  end

  test "should update ballot_inititive" do
    patch ballot_inititive_url(@ballot_inititive), params: { ballot_inititive: { name: @ballot_inititive.name, team_id: @ballot_inititive.team_id } }
    assert_redirected_to ballot_inititive_url(@ballot_inititive)
  end

  test "should destroy ballot_inititive" do
    assert_difference('BallotInititive.count', -1) do
      delete ballot_inititive_url(@ballot_inititive)
    end

    assert_redirected_to ballot_inititives_url
  end
end
