require 'test_helper'

class ImapProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imap_provider = imap_providers(:one)
  end

  test "should get index" do
    get imap_providers_url
    assert_response :success
  end

  test "should get new" do
    get new_imap_provider_url
    assert_response :success
  end

  test "should create imap_provider" do
    assert_difference('ImapProvider.count') do
      post imap_providers_url, params: { imap_provider: {  } }
    end

    assert_redirected_to imap_provider_url(ImapProvider.last)
  end

  test "should show imap_provider" do
    get imap_provider_url(@imap_provider)
    assert_response :success
  end

  test "should get edit" do
    get edit_imap_provider_url(@imap_provider)
    assert_response :success
  end

  test "should update imap_provider" do
    patch imap_provider_url(@imap_provider), params: { imap_provider: {  } }
    assert_redirected_to imap_provider_url(@imap_provider)
  end

  test "should destroy imap_provider" do
    assert_difference('ImapProvider.count', -1) do
      delete imap_provider_url(@imap_provider)
    end

    assert_redirected_to imap_providers_url
  end
end
