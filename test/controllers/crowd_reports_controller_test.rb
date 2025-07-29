require "test_helper"

class CrowdReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crowd_report = crowd_reports(:one)
  end

  test "should get index" do
    get crowd_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_crowd_report_url
    assert_response :success
  end

  test "should create crowd_report" do
    assert_difference("CrowdReport.count") do
      post crowd_reports_url, params: { crowd_report: { comment: @crowd_report.comment, level: @crowd_report.level, location_id: @crowd_report.location_id } }
    end

    assert_redirected_to crowd_report_url(CrowdReport.last)
  end

  test "should show crowd_report" do
    get crowd_report_url(@crowd_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_crowd_report_url(@crowd_report)
    assert_response :success
  end

  test "should update crowd_report" do
    patch crowd_report_url(@crowd_report), params: { crowd_report: { comment: @crowd_report.comment, level: @crowd_report.level, location_id: @crowd_report.location_id } }
    assert_redirected_to crowd_report_url(@crowd_report)
  end

  test "should destroy crowd_report" do
    assert_difference("CrowdReport.count", -1) do
      delete crowd_report_url(@crowd_report)
    end

    assert_redirected_to crowd_reports_url
  end
end
