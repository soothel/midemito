require "application_system_test_case"

class SkillDetailsTest < ApplicationSystemTestCase
  setup do
    @skill_detail = skill_details(:one)
  end

  test "visiting the index" do
    visit skill_details_url
    assert_selector "h1", text: "Skill details"
  end

  test "should create skill detail" do
    visit skill_details_url
    click_on "New skill detail"

    fill_in "Name", with: @skill_detail.name
    fill_in "Ratio", with: @skill_detail.ratio
    fill_in "Skill", with: @skill_detail.skill_id
    click_on "Create Skill detail"

    assert_text "Skill detail was successfully created"
    click_on "Back"
  end

  test "should update Skill detail" do
    visit skill_detail_url(@skill_detail)
    click_on "Edit this skill detail", match: :first

    fill_in "Name", with: @skill_detail.name
    fill_in "Ratio", with: @skill_detail.ratio
    fill_in "Skill", with: @skill_detail.skill_id
    click_on "Update Skill detail"

    assert_text "Skill detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill detail" do
    visit skill_detail_url(@skill_detail)
    click_on "Destroy this skill detail", match: :first

    assert_text "Skill detail was successfully destroyed"
  end
end
