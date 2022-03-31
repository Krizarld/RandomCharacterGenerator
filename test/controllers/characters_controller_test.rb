require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { age: @character.age, alignment: @character.alignment, dream: @character.dream, eyescolor: @character.eyescolor, gender: @character.gender, haircolor: @character.haircolor, jobclass: @character.jobclass, mainfault: @character.mainfault, mainquality: @character.mainquality, name: @character.name, past: @character.past, personality: @character.personality, race: @character.race, signs: @character.signs } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, alignment: @character.alignment, dream: @character.dream, eyescolor: @character.eyescolor, gender: @character.gender, haircolor: @character.haircolor, jobclass: @character.jobclass, mainfault: @character.mainfault, mainquality: @character.mainquality, name: @character.name, past: @character.past, personality: @character.personality, race: @character.race, signs: @character.signs } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
