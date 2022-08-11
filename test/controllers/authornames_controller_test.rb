require "test_helper"

class AuthornamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorname = authornames(:one)
  end

  test "should get index" do
    get authornames_url
    assert_response :success
  end

  test "should get new" do
    get new_authorname_url
    assert_response :success
  end

  test "should create authorname" do
    assert_difference('Authorname.count') do
      post authornames_url, params: { authorname: { author_name: @authorname.author_name } }
    end

    assert_redirected_to authorname_url(Authorname.last)
  end

  test "should show authorname" do
    get authorname_url(@authorname)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorname_url(@authorname)
    assert_response :success
  end

  test "should update authorname" do
    patch authorname_url(@authorname), params: { authorname: { author_name: @authorname.author_name } }
    assert_redirected_to authorname_url(@authorname)
  end

  test "should destroy authorname" do
    assert_difference('Authorname.count', -1) do
      delete authorname_url(@authorname)
    end

    assert_redirected_to authornames_url
  end
end
