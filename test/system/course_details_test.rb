require "application_system_test_case"

class CourseDetailsTest < ApplicationSystemTestCase
  setup do
    @course_detail = course_details(:one)
  end

  test "visiting the index" do
    visit course_details_url
    assert_selector "h1", text: "Course details"
  end

  test "should create course detail" do
    visit course_details_url
    click_on "New course detail"

    fill_in "Course", with: @course_detail.course_id
    fill_in "Deleted", with: @course_detail.deleted
    fill_in "Name", with: @course_detail.name
    click_on "Create Course detail"

    assert_text "Course detail was successfully created"
    click_on "Back"
  end

  test "should update Course detail" do
    visit course_detail_url(@course_detail)
    click_on "Edit this course detail", match: :first

    fill_in "Course", with: @course_detail.course_id
    fill_in "Deleted", with: @course_detail.deleted
    fill_in "Name", with: @course_detail.name
    click_on "Update Course detail"

    assert_text "Course detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Course detail" do
    visit course_detail_url(@course_detail)
    click_on "Destroy this course detail", match: :first

    assert_text "Course detail was successfully destroyed"
  end
end
