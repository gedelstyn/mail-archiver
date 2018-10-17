require 'test_helper'

class MailUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_user = mail_users(:one)
  end

  test "should get index" do
    get mail_users_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_user_url
    assert_response :success
  end

  test "should create mail_user" do
    assert_difference('MailUser.count') do
      post mail_users_url, params: { mail_user: { email: @mail_user.email, first_name: @mail_user.first_name, last_name: @mail_user.last_name, password: @mail_user.password } }
    end

    assert_redirected_to mail_user_url(MailUser.last)
  end

  test "should show mail_user" do
    get mail_user_url(@mail_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_user_url(@mail_user)
    assert_response :success
  end

  test "should update mail_user" do
    patch mail_user_url(@mail_user), params: { mail_user: { email: @mail_user.email, first_name: @mail_user.first_name, last_name: @mail_user.last_name, password: @mail_user.password } }
    assert_redirected_to mail_user_url(@mail_user)
  end

  test "should destroy mail_user" do
    assert_difference('MailUser.count', -1) do
      delete mail_user_url(@mail_user)
    end

    assert_redirected_to mail_users_url
  end
end
