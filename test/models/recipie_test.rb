require 'test_helper'
class RecipieTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "sudeep", email: "sudeep@example.com")
    @recipie = @chef.recipies.build(name: "peppper chicken", summary: "adipoli sadhanam", description: "add pepper to chicken")
  end
  test "test for recipie" do
    assert @recipie.valid?
  end
  test "name should not be empty" do
    @recipie.name=""
    assert_not @recipie.valid?
  end
  test "chef_id should be present" do
    @recipie.chef_id=nil
    assert_not @recipie.valid?
  end

  test "name should not be too long" do
    @recipie.name= "a" * 101
    assert_not @recipie.valid?
  end
  test "name should not be too short" do
    @recipie.name= "aaaa"
    assert_not @recipie.valid?
  end
  test "summary should be present" do
    @recipie.summary= ""
    assert_not @recipie.valid?
  end
  test "summary should not be too long" do
    @recipie.summary= "a" * 151
    assert_not @recipie.valid?
  end
  test "summary should not be too short" do
    @recipie.summary= "a" * 9
    assert_not @recipie.valid?
  end
  test "description should be present" do
    @recipie.description= ""
    assert_not @recipie.valid?
  end
  test "description should not be too long" do
    @recipie.description= "a" * 501
    assert_not @recipie.valid?
  end
  test "description should not be too short" do
    @recipie.description= "a" * 19
    assert_not @recipie.valid?
  end

end