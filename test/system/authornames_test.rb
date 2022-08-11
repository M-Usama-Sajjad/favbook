require "application_system_test_case"

class AuthornamesTest < ApplicationSystemTestCase
  setup do
    @authorname = authornames(:one)
  end

  test "visiting the index" do
    visit authornames_url
    assert_selector "h1", text: "Authornames"
  end

  test "creating a Authorname" do
    visit authornames_url
    click_on "New Authorname"

    fill_in "Author name", with: @authorname.author_name
    click_on "Create Authorname"

    assert_text "Authorname was successfully created"
    click_on "Back"
  end

  test "updating a Authorname" do
    visit authornames_url
    click_on "Edit", match: :first

    fill_in "Author name", with: @authorname.author_name
    click_on "Update Authorname"

    assert_text "Authorname was successfully updated"
    click_on "Back"
  end

  test "destroying a Authorname" do
    visit authornames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authorname was successfully destroyed"
  end
end
