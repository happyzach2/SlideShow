require 'test_helper'

class SubElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_element = sub_elements(:one)
  end

  test "should get index" do
    get sub_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_element_url
    assert_response :success
  end

  test "should create sub_element" do
    assert_difference('SubElement.count') do
      post sub_elements_url, params: { sub_element: { element_id: @sub_element.element_id, info: @sub_element.info } }
    end

    assert_redirected_to sub_element_url(SubElement.last)
  end

  test "should show sub_element" do
    get sub_element_url(@sub_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_element_url(@sub_element)
    assert_response :success
  end

  test "should update sub_element" do
    patch sub_element_url(@sub_element), params: { sub_element: { element_id: @sub_element.element_id, info: @sub_element.info } }
    assert_redirected_to sub_element_url(@sub_element)
  end

  test "should destroy sub_element" do
    assert_difference('SubElement.count', -1) do
      delete sub_element_url(@sub_element)
    end

    assert_redirected_to sub_elements_url
  end
end
