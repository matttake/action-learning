require "application_system_test_case"

class MaximsTest < ApplicationSystemTestCase
  setup do
    @maxim = maxims(:one)
  end

  test "visiting the index" do
    visit maxims_url
    assert_selector "h1", text: "Maxims"
  end

  test "creating a Maxim" do
    visit maxims_url
    click_on "New Maxim"

    fill_in "Content", with: @maxim.content
    fill_in "Title", with: @maxim.title
    click_on "Create Maxim"

    assert_text "Maxim was successfully created"
    click_on "Back"
  end

  test "updating a Maxim" do
    visit maxims_url
    click_on "Edit", match: :first

    fill_in "Content", with: @maxim.content
    fill_in "Title", with: @maxim.title
    click_on "Update Maxim"

    assert_text "Maxim was successfully updated"
    click_on "Back"
  end

  test "destroying a Maxim" do
    visit maxims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maxim was successfully destroyed"
  end
end
