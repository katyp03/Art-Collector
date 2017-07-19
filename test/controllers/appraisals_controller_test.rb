require 'test_helper'

class AppraisalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appraisal = appraisals(:one)
  end

  test "should get index" do
    get appraisals_url
    assert_response :success
  end

  test "should get new" do
    get new_appraisal_url
    assert_response :success
  end

  test "should create appraisal" do
    assert_difference('Appraisal.count') do
      post appraisals_url, params: { appraisal: { condition: @appraisal.condition, id: @appraisal.id, item_id: @appraisal.item_id, item_id: @appraisal.item_id, previous_owner: @appraisal.previous_owner, value: @appraisal.value } }
    end

    assert_redirected_to appraisal_url(Appraisal.last)
  end

  test "should show appraisal" do
    get appraisal_url(@appraisal)
    assert_response :success
  end

  test "should get edit" do
    get edit_appraisal_url(@appraisal)
    assert_response :success
  end

  test "should update appraisal" do
    patch appraisal_url(@appraisal), params: { appraisal: { condition: @appraisal.condition, id: @appraisal.id, item_id: @appraisal.item_id, item_id: @appraisal.item_id, previous_owner: @appraisal.previous_owner, value: @appraisal.value } }
    assert_redirected_to appraisal_url(@appraisal)
  end

  test "should destroy appraisal" do
    assert_difference('Appraisal.count', -1) do
      delete appraisal_url(@appraisal)
    end

    assert_redirected_to appraisals_url
  end
end
