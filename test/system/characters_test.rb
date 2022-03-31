require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Age", with: @character.age
    fill_in "Alignment", with: @character.alignment
    fill_in "Dream", with: @character.dream
    fill_in "Eyescolor", with: @character.eyescolor
    fill_in "Gender", with: @character.gender
    fill_in "Haircolor", with: @character.haircolor
    fill_in "Jobclass", with: @character.jobclass
    fill_in "Mainfault", with: @character.mainfault
    fill_in "Mainquality", with: @character.mainquality
    fill_in "Name", with: @character.name
    fill_in "Past", with: @character.past
    fill_in "Personality", with: @character.personality
    fill_in "Race", with: @character.race
    fill_in "Signs", with: @character.signs
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Age", with: @character.age
    fill_in "Alignment", with: @character.alignment
    fill_in "Dream", with: @character.dream
    fill_in "Eyescolor", with: @character.eyescolor
    fill_in "Gender", with: @character.gender
    fill_in "Haircolor", with: @character.haircolor
    fill_in "Jobclass", with: @character.jobclass
    fill_in "Mainfault", with: @character.mainfault
    fill_in "Mainquality", with: @character.mainquality
    fill_in "Name", with: @character.name
    fill_in "Past", with: @character.past
    fill_in "Personality", with: @character.personality
    fill_in "Race", with: @character.race
    fill_in "Signs", with: @character.signs
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
