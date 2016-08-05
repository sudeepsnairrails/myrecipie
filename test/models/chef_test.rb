require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "test", email: "tes@example.com")
  end
  test "test for checf" do
    assert @chef.valid?
  end
  test "name should not be empty" do
    @chef.chefname = ""
    assert_not @chef.valid?
  end
  test "name should not be too long" do
    @chef.chefname = "a" * 41
    assert_not @chef.valid?
  end
  test "name should not be too short" do
    @chef.chefname = "aa"
    assert_not @chef.valid?
  end

  test "email should not be empty" do
    @chef.email = ""
    assert_not @chef.valid?
  end
  test "email should not be too long" do
    @chef.email = "a" * 100
    assert_not @chef.valid?
  end
  test "name should be uique" do
   @dup_chef = @chef.dup
    @dup_chef.email = @chef.email.upcase
    @chef.save
    assert_not @dup_chef.valid?
  end

  test "email validation should accept valid emails" do
    @valid_addresses = %w[sudeep@emaple.com chakki.chakku@gmail.com love_you@chakki.com]
    @valid_addresses.each do |va|
      @chef.email = va
      assert @chef.valid?, "#{va} should be valid"
    end
  end

  test "email validation should regect invalid emails" do
    @invalid_addresses = %w[sudeep@emaple chakki.chakku@gmail,com love_you+chakki.com]
    @invalid_addresses.each do |ia|
      @chef.email = ia
      assert_not @chef.valid?, "#{ia} should be valid"
    end
  end

end
