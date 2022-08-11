require "application_system_test_case"

class BooknamesTest < ApplicationSystemTestCase
  setup do
    @bookname = booknames(:one)
  end

  test "visiting the index" do
    visit booknames_url
    assert_selector "h1", text: "Booknames"
  end

  test "creating a Bookname" do
    visit booknames_url
    click_on "New Bookname"

    fill_in "Book name", with: @bookname.book_name
    click_on "Create Bookname"

    assert_text "Bookname was successfully created"
    click_on "Back"
  end

  test "updating a Bookname" do
    visit booknames_url
    click_on "Edit", match: :first

    fill_in "Book name", with: @bookname.book_name
    click_on "Update Bookname"

    assert_text "Bookname was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookname" do
    visit booknames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookname was successfully destroyed"
  end
end
