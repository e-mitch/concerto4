require "application_system_test_case"

class SkillsTest < ApplicationSystemTestCase
  setup do
    @skill = skills(:one)
  end

  test "visiting the index" do
    visit skills_url
    assert_selector "h1", text: "Skills"
  end

  test "creating a Skill" do
    visit skills_url
    click_on "New Skill"

    fill_in "Details", with: @skill.details
    fill_in "Experience", with: @skill.experience
    fill_in "Genre", with: @skill.genre
    fill_in "Variety", with: @skill.variety
    click_on "Create Skill"

    assert_text "Skill was successfully created"
    click_on "Back"
  end

  test "updating a Skill" do
    visit skills_url
    click_on "Edit", match: :first

    fill_in "Details", with: @skill.details
    fill_in "Experience", with: @skill.experience
    fill_in "Genre", with: @skill.genre
    fill_in "Variety", with: @skill.variety
    click_on "Update Skill"

    assert_text "Skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Skill" do
    visit skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skill was successfully destroyed"
  end
end
