require "application_system_test_case"

class BlahsTest < ApplicationSystemTestCase
  setup do
    @blah = blahs(:one)
  end

  test "visiting the index" do
    visit blahs_url
    assert_selector "h1", text: "Blahs"
  end

  test "should create blah" do
    visit blahs_url
    click_on "New blah"

    fill_in "Blog", with: @blah.blog_id
    fill_in "Comment", with: @blah.comment
    fill_in "User", with: @blah.user_id
    click_on "Create Blah"

    assert_text "Blah was successfully created"
    click_on "Back"
  end

  test "should update Blah" do
    visit blah_url(@blah)
    click_on "Edit this blah", match: :first

    fill_in "Blog", with: @blah.blog_id
    fill_in "Comment", with: @blah.comment
    fill_in "User", with: @blah.user_id
    click_on "Update Blah"

    assert_text "Blah was successfully updated"
    click_on "Back"
  end

  test "should destroy Blah" do
    visit blah_url(@blah)
    click_on "Destroy this blah", match: :first

    assert_text "Blah was successfully destroyed"
  end
end
