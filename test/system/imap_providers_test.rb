require "application_system_test_case"

class ImapProvidersTest < ApplicationSystemTestCase
  setup do
    @imap_provider = imap_providers(:one)
  end

  test "visiting the index" do
    visit imap_providers_url
    assert_selector "h1", text: "Imap Providers"
  end

  test "creating a Imap provider" do
    visit imap_providers_url
    click_on "New Imap Provider"

    click_on "Create Imap provider"

    assert_text "Imap provider was successfully created"
    click_on "Back"
  end

  test "updating a Imap provider" do
    visit imap_providers_url
    click_on "Edit", match: :first

    click_on "Update Imap provider"

    assert_text "Imap provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Imap provider" do
    visit imap_providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imap provider was successfully destroyed"
  end
end
