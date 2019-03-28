require 'test_helper'

class LrofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lrofile = lrofiles(:one)
  end

  test "should get index" do
    get lrofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_lrofile_url
    assert_response :success
  end

  test "should create lrofile" do
    assert_difference('Lrofile.count') do
      post lrofiles_url, params: { lrofile: { address: @lrofile.address, firstname: @lrofile.firstname, lastname: @lrofile.lastname } }
    end

    assert_redirected_to lrofile_url(Lrofile.last)
  end

  test "should show lrofile" do
    get lrofile_url(@lrofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_lrofile_url(@lrofile)
    assert_response :success
  end

  test "should update lrofile" do
    patch lrofile_url(@lrofile), params: { lrofile: { address: @lrofile.address, firstname: @lrofile.firstname, lastname: @lrofile.lastname } }
    assert_redirected_to lrofile_url(@lrofile)
  end

  test "should destroy lrofile" do
    assert_difference('Lrofile.count', -1) do
      delete lrofile_url(@lrofile)
    end

    assert_redirected_to lrofiles_url
  end
end
