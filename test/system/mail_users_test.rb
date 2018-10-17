require "application_system_test_case"

class MailUsersTest < ApplicationSystemTestCase
  setup do
    @mail_user = mail_users(:one)
  end

  test "visiting the index" do
    visit mail_users_url
    assert_selector "h1", text: "Mail Users"
  end

  test "creating a Mail user" do
    visit mail_users_url
    click_on "New Mail User"

    fill_in "Email", with: @mail_user.email
    fill_in "First Name", with: @mail_user.first_name
    fill_in "Last Name", with: @mail_user.last_name
    fill_in "Password", with: @mail_user.password
    click_on "Create Mail user"

    assert_text "Mail user was successfully created"
    click_on "Back"
  end

  test "updating a Mail user" do
    visit mail_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @mail_user.email
    fill_in "First Name", with: @mail_user.first_name
    fill_in "Last Name", with: @mail_user.last_name
    fill_in "Password", with: @mail_user.password
    click_on "Update Mail user"

    assert_text "Mail user was successfully updated"
    click_on "Back"
  end

  test "destroying a Mail user" do
    visit mail_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mail user was successfully destroyed"
  end
end
