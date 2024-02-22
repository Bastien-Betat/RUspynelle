require "application_system_test_case"

class ArtistsTest < ApplicationSystemTestCase
  setup do
    @artist = artists(:one)
  end

  test "visiting the index" do
    visit artists_url
    assert_selector "h1", text: "Artists"
  end

  test "should create artist" do
    visit artists_url
    click_on "New artist"

    fill_in "Description", with: @artist.description
    fill_in "Imagep", with: @artist.imagep
    fill_in "Insta", with: @artist.insta
    fill_in "Link", with: @artist.link
    fill_in "Profilp", with: @artist.profilp
    fill_in "Pseudo", with: @artist.pseudo
    fill_in "Support", with: @artist.support
    click_on "Create Artist"

    assert_text "Artist was successfully created"
    click_on "Back"
  end

  test "should update Artist" do
    visit artist_url(@artist)
    click_on "Edit this artist", match: :first

    fill_in "Description", with: @artist.description
    fill_in "Imagep", with: @artist.imagep
    fill_in "Insta", with: @artist.insta
    fill_in "Link", with: @artist.link
    fill_in "Profilp", with: @artist.profilp
    fill_in "Pseudo", with: @artist.pseudo
    fill_in "Support", with: @artist.support
    click_on "Update Artist"

    assert_text "Artist was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist" do
    visit artist_url(@artist)
    click_on "Destroy this artist", match: :first

    assert_text "Artist was successfully destroyed"
  end
end
