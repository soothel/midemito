require "test_helper"

class SkillDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_detail = skill_details(:one)
  end

  test "should get index" do
    get skill_details_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_detail_url
    assert_response :success
  end

  test "should create skill_detail" do
    assert_difference("SkillDetail.count") do
      post skill_details_url, params: { skill_detail: { name: @skill_detail.name, ratio: @skill_detail.ratio, skill_id: @skill_detail.skill_id } }
    end

    assert_redirected_to skill_detail_url(SkillDetail.last)
  end

  test "should show skill_detail" do
    get skill_detail_url(@skill_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_detail_url(@skill_detail)
    assert_response :success
  end

  test "should update skill_detail" do
    patch skill_detail_url(@skill_detail), params: { skill_detail: { name: @skill_detail.name, ratio: @skill_detail.ratio, skill_id: @skill_detail.skill_id } }
    assert_redirected_to skill_detail_url(@skill_detail)
  end

  test "should destroy skill_detail" do
    assert_difference("SkillDetail.count", -1) do
      delete skill_detail_url(@skill_detail)
    end

    assert_redirected_to skill_details_url
  end
end
