require "application_system_test_case"

class CrowdReportsTest < ApplicationSystemTestCase
  setup do
    @crowd_report = crowd_reports(:one)
  end

  test "visiting the index" do
    visit crowd_reports_url
    assert_selector "h1", text: "Crowd reports"
  end

  test "should create crowd report" do
    visit crowd_reports_url
    click_on "New crowd report"

    fill_in "Comment", with: @crowd_report.comment
    fill_in "Level", with: @crowd_report.level
    fill_in "Location", with: @crowd_report.location_id
    click_on "Create Crowd report"

    assert_text "Crowd report was successfully created"
    click_on "Back"
  end

  test "should update Crowd report" do
    visit crowd_report_url(@crowd_report)
    click_on "Edit this crowd report", match: :first

    fill_in "Comment", with: @crowd_report.comment
    fill_in "Level", with: @crowd_report.level
    fill_in "Location", with: @crowd_report.location_id
    click_on "Update Crowd report"

    assert_text "Crowd report was successfully updated"
    click_on "Back"
  end

  test "should destroy Crowd report" do
    visit crowd_report_url(@crowd_report)
    click_on "Destroy this crowd report", match: :first

    assert_text "Crowd report was successfully destroyed"
  end
end
