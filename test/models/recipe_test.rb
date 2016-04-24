require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: 'Food Test',summary:'Testing this food',
      description: 'BLABLABLABLALBLABLALBLABLALBLABLLABLALBLABLAL')
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

  test "name length should not be less than 5" do
    @recipe.name = "aaaa"
    assert @recipe.invalid?
  end

  test "name length should not be more than 20" do
    @recipe.name = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    assert @recipe.invalid?
  end

  
  test "summary should be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end

  test "summary length should not be less than 10" do
    @recipe.summary = "aaaaaaa"
    assert @recipe.invalid?    
  end

  test "summary length should not be more than 150" do
    @recipe.summary = "adsfafksdlfmslkmfkamfklamfkmsdkfmskldfkamkflmskalfmklamfklamkflkslamfklamfklmsaklmfsklamfklsakfkalfmlafmsldamfklamflmaklfmaklfmskamfsklakfldamkflsmalfmslamfslamkfldsmaklfmskadfmsdklamfkslamfklamfklsmakfdasmkfmsakfmsklamfklasmfklasmfklasmflasmfklasmfklamfklsmakflmsakfmsaklmfsklamfkslamkfsamlfmaskfkafkam"
    assert @recipe.invalid?
  end



end