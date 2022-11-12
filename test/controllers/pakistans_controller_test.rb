require 'test_helper'

class PakistansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pakistan = pakistans(:one)
  end

  test "should get index" do
    get pakistans_url
    assert_response :success
  end

  test "should get new" do
    get new_pakistan_url
    assert_response :success
  end

  test "should create pakistan" do
    assert_difference('Pakistan.count') do
      post pakistans_url, params: { pakistan: {  } }
    end

    assert_redirected_to pakistan_url(Pakistan.last)
  end

  test "should show pakistan" do
    get pakistan_url(@pakistan)
    assert_response :success
  end

  test "should get edit" do
    get edit_pakistan_url(@pakistan)
    assert_response :success
  end

  test "should update pakistan" do
    patch pakistan_url(@pakistan), params: { pakistan: {  } }
    assert_redirected_to pakistan_url(@pakistan)
  end

  test "should destroy pakistan" do
    assert_difference('Pakistan.count', -1) do
      delete pakistan_url(@pakistan)
    end

    assert_redirected_to pakistans_url
  end
end
