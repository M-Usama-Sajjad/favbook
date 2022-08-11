require "test_helper"

class BooknamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookname = booknames(:one)
  end

  test "should get index" do
    get booknames_url
    assert_response :success
  end

  test "should get new" do
    get new_bookname_url
    assert_response :success
  end

  test "should create bookname" do
    assert_difference('Bookname.count') do
      post booknames_url, params: { bookname: { book_name: @bookname.book_name } }
    end

    assert_redirected_to bookname_url(Bookname.last)
  end

  test "should show bookname" do
    get bookname_url(@bookname)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookname_url(@bookname)
    assert_response :success
  end

  test "should update bookname" do
    patch bookname_url(@bookname), params: { bookname: { book_name: @bookname.book_name } }
    assert_redirected_to bookname_url(@bookname)
  end

  test "should destroy bookname" do
    assert_difference('Bookname.count', -1) do
      delete bookname_url(@bookname)
    end

    assert_redirected_to booknames_url
  end
end
