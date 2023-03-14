require "test_helper"

class BlahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blah = blahs(:one)
  end

  test "should get index" do
    get blahs_url
    assert_response :success
  end

  test "should get new" do
    get new_blah_url
    assert_response :success
  end

  test "should create blah" do
    assert_difference("Blah.count") do
      post blahs_url, params: { blah: { blog_id: @blah.blog_id, comment: @blah.comment, user_id: @blah.user_id } }
    end

    assert_redirected_to blah_url(Blah.last)
  end

  test "should show blah" do
    get blah_url(@blah)
    assert_response :success
  end

  test "should get edit" do
    get edit_blah_url(@blah)
    assert_response :success
  end

  test "should update blah" do
    patch blah_url(@blah), params: { blah: { blog_id: @blah.blog_id, comment: @blah.comment, user_id: @blah.user_id } }
    assert_redirected_to blah_url(@blah)
  end

  test "should destroy blah" do
    assert_difference("Blah.count", -1) do
      delete blah_url(@blah)
    end

    assert_redirected_to blahs_url
  end
end
